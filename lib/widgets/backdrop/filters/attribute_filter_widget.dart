import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:provider/provider.dart';

import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../services/services.dart';
import 'widgets/filter_option_item.dart';
import 'widgets/menu_title_widget.dart';
import 'widgets/sub_attribute_item.dart';

class AttributeFilterWidget extends StatefulWidget {
  const AttributeFilterWidget({
    super.key,
    this.selectedAttribute,
    this.onChanged,
    this.useExpansionStyle = true,
  });

  final bool useExpansionStyle;
  final Map<FilterAttribute, List<SubAttribute>>? selectedAttribute;

  final Function(Map<FilterAttribute, List<SubAttribute>>)? onChanged;

  @override
  State<AttributeFilterWidget> createState() => AttributeFilterWidgetState();
}

class AttributeFilterWidgetState extends State<AttributeFilterWidget> {
  FilterAttribute? currentAttribute;

  Map<FilterAttribute, List<SubAttribute>> _listSelectedAttributes = {};

  FilterAttributeModel get filterAttributeModel =>
      context.read<FilterAttributeModel>();

  @override
  void initState() {
    _listSelectedAttributes = widget.selectedAttribute ?? {};
    currentAttribute = _listSelectedAttributes.entries.firstOrNull?.key ??
        filterAttributeModel.listVisibleAttribute?.firstOrNull;
    super.initState();
  }

  void _onTapAttribute(int? id) {
    if (filterAttributeModel.isLoading) {
      return;
    }

    setState(() {
      currentAttribute = filterAttributeModel.lstProductAttribute
          ?.firstWhereOrNull((element) => element.id == id);
    });
    filterAttributeModel.getSubAttributes(attributeId: id!);
  }

  void _onTapSubAttribute(int attributeId, SubAttribute subAttribute) {
    final currentAttribute = filterAttributeModel.lstProductAttribute
        ?.firstWhereOrNull((item) => item.id == attributeId);

    var selectedSubAttribute = List<SubAttribute>.from(_listSelectedAttributes
            .entries
            .firstWhereOrNull((sub) => sub.key.id == currentAttribute?.id)
            ?.value ??
        []);

    final isExist = selectedSubAttribute
            .firstWhereOrNull((element) => element.id == subAttribute.id) !=
        null;

    setState(() {
      if (isExist) {
        selectedSubAttribute
            .removeWhere((element) => element.id == subAttribute.id);
      } else {
        selectedSubAttribute.add(subAttribute);
      }
      _listSelectedAttributes.clear();
      _listSelectedAttributes[currentAttribute!] = selectedSubAttribute;
    });
    widget.onChanged?.call(_listSelectedAttributes);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FilterAttributeModel>(
      builder: (_, model, child) {
        final listAttribute = model.listVisibleAttribute ?? [];

        if (listAttribute.isEmpty) {
          return const SizedBox();
        }

        var list = List<Widget>.generate(
          listAttribute.length,
          (index) {
            final item = listAttribute.elementAt(index);
            return FilterOptionItem(
              enabled: !model.isLoading,
              onTap: () => _onTapAttribute(item.id),
              title: item.name!.toUpperCase(),
              selected: currentAttribute?.id == item.id,
            );
          },
        );

        final attrWidget = Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: list.length > 4 ? 100 : 50,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              constraints: const BoxConstraints(maxHeight: 100),
              child: GridView.count(
                scrollDirection: Axis.horizontal,
                childAspectRatio: 0.4,
                shrinkWrap: true,
                crossAxisCount: list.length > 4 ? 2 : 1,
                children: list,
              ),
            ),
            _renderSubAttributeList(context, model),
          ],
        );

        return MenuTitleWidget(
          title: S.of(context).attribute,
          useExpansionStyle: widget.useExpansionStyle,
          child: attrWidget,
        );
      },
    );
  }

  Widget _renderSubAttributeList(
      BuildContext context, FilterAttributeModel model) {
    if (model.isLoading && currentAttribute?.id == null) {
      return loadingMoreWidget();
    }

    if (currentAttribute == null ||
        (model.lstSubAttribute[currentAttribute?.id]?.isEmpty ?? true)) {
      return const SizedBox();
    }

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      child: Wrap(
        children: [
          ...List.generate(
            model.lstSubAttribute[currentAttribute?.id]?.length ?? 0,
            (index) {
              final subAttribute =
                  model.lstSubAttribute[currentAttribute?.id]![index];
              final isSelect = _listSelectedAttributes.entries.firstWhereOrNull(
                      (sub) =>
                          sub.key.id == currentAttribute?.id &&
                          sub.value.any(
                              (element) => element.id == subAttribute.id)) !=
                  null;
              return SubAttributeItem(
                name: subAttribute.name!,
                isSelected: isSelect,
                onSelected: (val) =>
                    _onTapSubAttribute(currentAttribute!.id!, subAttribute),
              );
            },
          ),
          if (model.isLoadingSub[currentAttribute?.id] == true)
            loadingMoreWidget()
          else if (model.isEndSub[currentAttribute?.id] != true)
            SubAttributeItem(
              name: S.of(context).more,
              isSelected: false,
              onSelected: (val) {
                model.getSubAttributes(attributeId: currentAttribute!.id!);
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
