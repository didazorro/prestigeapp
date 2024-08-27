import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../models/entities/listing_location.dart';
import '../../../models/listing/listing_location_model.dart';
import '../../common/tree_view.dart';
import 'widgets/location_item.dart';
import 'widgets/menu_title_widget.dart';

class ListingLocationFilterWidget extends StatefulWidget {
  final String? listingLocationId;
  final Function(String? listingLocationId) onFilter;
  final bool useExpansionStyle;

  final EdgeInsets? paddingItem;
  final EdgeInsets? marginItem;
  const ListingLocationFilterWidget({
    super.key,
    required this.onFilter,
    this.useExpansionStyle = true,
    this.paddingItem,
    this.marginItem,
    this.listingLocationId,
  });

  @override
  State<ListingLocationFilterWidget> createState() => _LocationTreeState();
}

class _LocationTreeState extends State<ListingLocationFilterWidget> {
  List<String> _locationIds = [];

  // Store location id from parent to children
  List<String?> selectedLocationTree = [];

  @override
  void initState() {
    super.initState();
    if (widget.listingLocationId?.isNotEmpty ?? false) {
      _locationIds.add('${widget.listingLocationId}');
    }
  }

  bool hasChildren(locations, id) {
    if (locations == null) return false;

    return locations.where((o) => o.parent == id).isNotEmpty;
  }

  List<ListingLocation> getSubLocations(List<ListingLocation>? locations, id) {
    if (locations == null) return [];

    if (id == null) {
      return locations.where((item) => item.parent == '0').toList();
    }

    return locations.where((o) => o.parent == id).toList();
  }

  void onTap(ListingLocation location) {
    final id = location.id;
    if (_locationIds.any((element) => element == id)) {
      _locationIds.removeWhere((element) => element == id);
      selectedLocationTree.clear();
    } else {
      var indexOfCate = selectedLocationTree.indexOf(location.parent);
      if (indexOfCate != -1) {
        selectedLocationTree.removeRange(
            indexOfCate, selectedLocationTree.length);
      } else {
        selectedLocationTree.clear();
      }
      _locationIds = [id!];
    }

    setState(() {
      EasyDebounce.debounce(
        'debounceFilterLocation',
        const Duration(milliseconds: 1000),
        () {
          widget.onFilter(_locationIds.isNotEmpty ? _locationIds.first : null);
        },
      );
    });
  }

  List<Parent> _getLocationItems(
    List<ListingLocation>? locations, {
    String? id,
    required Function onFilter,
    int level = 1,
  }) {
    var subTree = <Parent>[];

    for (var location in getSubLocations(locations, id)) {
      var subLocations = _getLocationItems(
        locations,
        id: location.id,
        onFilter: widget.onFilter,
        level: level + 1,
      );

      if (_locationIds.contains(location.id) ||
          selectedLocationTree.contains(location.id)) {
        selectedLocationTree.insert(0, location.parent);
      }

      subTree.add(Parent(
        parent: LocationItem(
          location,
          padding: widget.paddingItem,
          margin: widget.marginItem,
          hasChild: hasChildren(locations, location.id),
          isSelected: _locationIds.contains(location.id),
          isParentOfSelected: selectedLocationTree.contains(location.id),
          onTap: () => onTap(location),
          level: level,
        ),
        childList: ChildList(
          children: [
            ...subLocations,
          ],
        ),
      ));
    }

    return subTree;
  }

  Widget getTreeView({required List<ListingLocation> locations}) {
    return TreeView(
      parentList: _getLocationItems(
        locations,
        onFilter: widget.onFilter,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final menuLocation = Selector<ListingLocationModel, List<ListingLocation>>(
      builder: (context, locations, child) => getTreeView(
        locations: locations,
      ),
      selector: (_, model) => model.locations,
    );

    return MenuTitleWidget(
      title: S.of(context).location,
      useExpansionStyle: widget.useExpansionStyle,
      child: menuLocation,
    );
  }
}
