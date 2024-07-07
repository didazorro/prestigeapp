import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/config.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/index.dart'
    show AppModel, FilterAttributeModel, SubAttribute;
import '../../../base_screen.dart';

class FilterSearchAttributes extends StatefulWidget {
  final Function(List<SubAttribute>, String?)? onSelect;
  final List<SubAttribute>? listSelected;
  final String? slug;

  const FilterSearchAttributes({this.onSelect, this.listSelected, this.slug});

  @override
  BaseScreen<FilterSearchAttributes> createState() =>
      _FilterSearchAttributesState();
}

class _FilterSearchAttributesState extends BaseScreen<FilterSearchAttributes> {
  FilterAttributeModel? filterAttr;
  String? currentSlug;
  int indexSelect = 0;
  int? currentAttrID = -1;
  int currentTermId = -1;
  Color colorSelected = Colors.white;
  var listSelected = <SubAttribute>[];

  bool checkSubAttributeSelected(SubAttribute itemCheck) {
    return listSelected
        .any((item) => item.name == itemCheck.name && item.id == itemCheck.id);
  }

  bool checkAttributeSelected(String? slug) {
    return slug != null && slug == currentSlug;
  }

  void _onTapSubAttribute(SubAttribute subAttribute) {
    var isFound = checkSubAttributeSelected(subAttribute);
    if (isFound == false) {
      listSelected.add(subAttribute);
    } else {
      listSelected.removeWhere((element) => element.id == subAttribute.id);
    }

    widget.onSelect!(listSelected, currentSlug);
    setState(() {});
  }

  @override
  void afterFirstLayout(BuildContext context) {
    filterAttr = Provider.of<FilterAttributeModel>(context, listen: false);
    final listAttribute = filterAttr?.lstProductAttribute ?? [];
    final mapSubAttribute = filterAttr?.lstSubAttribute ?? {};
    if (listSelected.isEmpty && listAttribute.isNotEmpty) {
      currentSlug = listAttribute.first.slug;
      currentAttrID = listAttribute.first.id;
      setState(() {});
    }
    if (listSelected.isNotEmpty) {
      for (var entry in mapSubAttribute.entries) {
        if (entry.value.indexWhere((element) =>
                listSelected.any((selected) => selected.id == element.id)) !=
            -1) {
          final attribute = listAttribute
              .firstWhereOrNull((element) => element.id == entry.key);
          currentAttrID = attribute?.id;
          currentSlug = attribute?.slug;
          break;
        }
      }

      setState(() {});
    }
  }

  @override
  void initState() {
    currentSlug = widget.slug;
    listSelected = widget.listSelected!.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var lang = Provider.of<AppModel>(context).langCode;

    filterAttr = Provider.of<FilterAttributeModel>(context);
    Color getColorSelectTextTitle(bool isSelected) => isSelected
        ? Theme.of(context).primaryColor
        : Theme.of(context).colorScheme.secondary;

    Color getColorSelectTextButton(bool isSelected) =>
        isSelected ? Colors.white : Theme.of(context).colorScheme.secondary;

    Color getColorSelectBackgroundButton(bool isSelected) => isSelected
        ? Theme.of(context).primaryColor
        : Theme.of(context).primaryColorLight;

    return ListenableProvider.value(
      value: filterAttr,
      child: Consumer<FilterAttributeModel>(
        builder: (context, value, child) {
          if (value.lstProductAttribute != null &&
              value.lstProductAttribute!.isNotEmpty) {
            var list = List<Widget>.generate(
              value.lstProductAttribute!.length,
              (index) {
                return InkWell(
                  onTap: () {
                    if (!value.isLoading) {
                      currentAttrID = value.lstProductAttribute![index].id;
                      currentSlug = value.lstProductAttribute![index].slug;
                      listSelected.clear();
                      value.getSubAttributes(attributeId: currentAttrID!);
                      setState(() {});
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(
                          (kProductVariantLanguage[lang] != null &&
                                  kProductVariantLanguage[lang][value
                                          .lstProductAttribute![index].name!
                                          .toLowerCase()] !=
                                      null)
                              ? kProductVariantLanguage[lang][value
                                  .lstProductAttribute![index].name!
                                  .toLowerCase()]
                              : value.lstProductAttribute![index].name!
                                  .toLowerCase(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: getColorSelectTextTitle(
                              checkAttributeSelected(
                                value.lstProductAttribute![index].slug,
                              ),
                            ),
                            letterSpacing: 1.2,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          '|',
                          style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.6),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );

            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                    bottom: 10,
                    left: 30,
                  ),
                  child: Text(
                    S.of(context).attributes,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      const SizedBox(
                        width: 20,
                      ),
                      ...list,
                    ],
                  ),
                ),
                if (value.isLoading)
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      width: 25.0,
                      height: 25.0,
                      child: kLoadingWidget(context),
                    ),
                  ),
                const SizedBox(height: 5),
                if (!value.isLoading)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        const SizedBox(width: 30),
                        ...List.generate(
                          value.lstSubAttribute[currentAttrID]?.length ?? 0,
                          (index) {
                            final subAttribute =
                                value.lstSubAttribute[currentAttrID]![index];
                            return GestureDetector(
                              onTap: () {
                                _onTapSubAttribute(subAttribute);
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 15),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: getColorSelectBackgroundButton(
                                    checkSubAttributeSelected(
                                      subAttribute,
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Text(
                                  subAttribute.name ?? '',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: getColorSelectTextButton(
                                      checkSubAttributeSelected(
                                        subAttribute,
                                      ),
                                    ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
              ],
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
