import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../services/services.dart';
import 'widgets/filter_option_item.dart';
import 'widgets/menu_title_widget.dart';

class MultiAttributeFilterWidget extends StatefulWidget {
  const MultiAttributeFilterWidget({
    super.key,
    this.selectedAttribute,
    this.onChanged,
    this.useExpansionStyle = true,
  });

  final bool useExpansionStyle;
  final Map<FilterAttribute, List<SubAttribute>>? selectedAttribute;

  final Function(Map<FilterAttribute, List<SubAttribute>>)? onChanged;

  @override
  State<MultiAttributeFilterWidget> createState() =>
      MultiAttributeFilterWidgetState();
}

class MultiAttributeFilterWidgetState
    extends State<MultiAttributeFilterWidget> {
  Map<FilterAttribute, List<SubAttribute>> _listSelectedAttributes = {};

  FilterAttributeModel get filterAttributeModel =>
      context.read<FilterAttributeModel>();

  @override
  void initState() {
    _listSelectedAttributes = widget.selectedAttribute ?? {};
    super.initState();
  }

  void _onTapSubAttribute(
    FilterAttribute attribute,
    SubAttribute subAttribute,
  ) {
    var selectedSubAttribute = List<SubAttribute>.from(_listSelectedAttributes
            .entries
            .firstWhereOrNull((e) => e.key.id == attribute.id)
            ?.value ??
        []);

    final isExist = selectedSubAttribute
            .indexWhere((element) => element.id == subAttribute.id) !=
        -1;

    setState(() {
      if (isExist) {
        selectedSubAttribute
            .removeWhere((element) => element.id == subAttribute.id);
      } else {
        selectedSubAttribute.add(subAttribute);
      }

      if (selectedSubAttribute.isEmpty) {
        _listSelectedAttributes
            .removeWhere((key, value) => key.id == attribute.id);
      } else {
        _listSelectedAttributes[attribute] = selectedSubAttribute;
      }
    });
    widget.onChanged?.call(_listSelectedAttributes);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterAttributeModel>(
      builder: (_, model, child) {
        final listAttribute =
            model.lstProductAttribute?.where((element) => element.isVisible) ??
                <FilterAttribute>[];

        if (listAttribute.isEmpty && !model.isLoading) {
          return const SizedBox();
        }

        var list = List<Widget>.generate(
          listAttribute.length,
          (index) {
            final item = listAttribute.elementAt(index);

            return MenuTitleWidget(
              title: item.name ?? '',
              useExpansionStyle: widget.useExpansionStyle,
              child: _renderSubAttributeList(context, model, item),
            );
          },
        );
        return Column(
          children: list,
        );
      },
    );
  }

  Widget _renderSubAttributeList(
    BuildContext context,
    FilterAttributeModel model,
    FilterAttribute attribute,
  ) {
    final listSubAttribute = model.lstSubAttribute[attribute.id] ?? [];

    if (listSubAttribute.isEmpty) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: listSubAttribute.length > 4 ? 100 : 50,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        childAspectRatio: 0.4,
        shrinkWrap: true,
        crossAxisCount: listSubAttribute.length > 4 ? 2 : 1,
        children: [
          ...List<Widget>.generate(
            listSubAttribute.length,
            (index) {
              final subAttribute = listSubAttribute[index];
              final isSelect = _listSelectedAttributes[attribute]
                  ?.any((element) => element.id == subAttribute.id);
              return FilterOptionItem(
                title: subAttribute.name!,
                selected: isSelect,
                onTap: () => _onTapSubAttribute(attribute, subAttribute),
              );
            },
          ),
          if (model.isLoadingSub[attribute.id] == true)
            loadingMoreWidget()
          else if (model.isEndSub[attribute.id] != true)
            FilterOptionItem(
              title: S.of(context).more,
              selected: false,
              onTap: () {
                model.getSubAttributes(attributeId: attribute.id!);
              },
            ),
        ],
      ),
    );
  }

  Widget loadingMoreWidget() {
    return SizedBox(
      width: 70,
      height: 50,
      child: Center(
        child: JumpingDots(
          innerPadding: 2,
          radius: 6,
          color: Services().widget.enableProductBackdrop
              ? Theme.of(context).colorScheme.secondary.withOpacity(0.8)
              : Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
