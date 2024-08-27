import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/category/category_model.dart';
import '../../../models/entities/index.dart';
import '../../../routes/flux_navigate.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/common/paging_list.dart';

class SideMenuSubCategories extends StatefulWidget {
  /// Not support enableLargeCategory
  static const String type = 'sideMenuWithSub';

  final Map<String, dynamic>? icons;

  const SideMenuSubCategories({this.icons});

  @override
  State<StatefulWidget> createState() => SideMenuSubCategoriesState();
}

class SideMenuSubCategoriesState extends State<SideMenuSubCategories> {
  int selectedIndex = 0;

  CategoryModel get categoryModel =>
      Provider.of<CategoryModel>(context, listen: false);

  List<Category> getSubCategories(id) {
    return categoryModel.getCategory(parentId: id) ?? <Category>[];
  }

  Map<String, dynamic> getListIcons(categories) {
    var icons = <String?, dynamic>{};
    for (var cat in categories) {
      if (cat.image != null && cat.image!.isNotEmpty) {
        icons[cat.id] = cat.image;
      }
    }
    return Map<String, dynamic>.from(icons);
  }

  List<Category> getListCategories() {
    var categories = <Category>[];
    for (var cat in categoryModel.categories!) {
      if (cat.parent == '0') {
        categories.add(cat);
      }
    }
    return categories;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Consumer<CategoryModel>(
      builder: (context, provider, child) {
        if (provider.isFirstLoad) {
          return Center(
            child: kLoadingWidget(context),
          );
        }

        final categories = provider.rootCategories ?? <Category>[];

        if (categories.isEmpty) {
          return Center(
            child: Text(S.of(context).noData),
          );
        }

        if (categories.length <= selectedIndex) {
          selectedIndex = categories.length - 1;
        }

        var icons = getListIcons(categories);

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PagingList<CategoryModel, Category>(
                selectorData: (_) => categories,
                itemBuilder: (context, category, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6.0,
                        vertical: 12.0,
                      ),
                      decoration: BoxDecoration(
                        color: selectedIndex == index
                            ? theme.primaryColor.withOpacity(0.1)
                            : Colors.transparent,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 4.0,
                          left: 6,
                        ),
                        child: AnimatedDefaultTextStyle(
                          style: selectedIndex == index
                              ? theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 11,
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w600,
                                )
                              : theme.textTheme.bodySmall!.copyWith(
                                  fontSize: 11,
                                  color: theme.colorScheme.secondary,
                                ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          duration: const Duration(milliseconds: 200),
                          child:
                              Text(categories[index].name?.toUpperCase() ?? ''),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 7,
              child: Builder(
                builder: (context) {
                  var category = categories[selectedIndex];
                  return GridSubCategory(
                    key: Key(category.toString()),
                    getSubCategories(category.id),
                    parentCategory: category,
                    parentCategoryImage:
                        kGridIconsCategories[category.id ?? ''] ??
                            icons[category.id],
                    icons: icons,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class GridSubCategory extends StatefulWidget {
  final List<Category> categories;
  final Map<String, dynamic>? icons;

  final Category? parentCategory;
  final String? parentCategoryImage;

  const GridSubCategory(
    this.categories, {
    this.icons,
    this.parentCategory,
    this.parentCategoryImage,
    super.key,
  });

  @override
  State<GridSubCategory> createState() => _StateGridSubCategory();
}

class _StateGridSubCategory extends State<GridSubCategory> {
  final _gridPadding = 8.0;
  final _itemPadding = 4.0;

  @override
  Widget build(BuildContext context) {
    final categories = widget.categories;

    // ignore: unnecessary_null_comparison
    if (categories == null) {
      return Container(
        child: kLoadingWidget(context),
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final gridSize = ((constraints.maxWidth - _gridPadding * 2) /
                kAdvanceConfig.gridCount) -
            (_itemPadding * 2);

        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: _gridPadding),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: List<Widget>.generate(
                categories.length,
                (i) {
                  return GestureDetector(
                    onTap: () => FluxNavigate.pushNamed(
                      RouteList.backdrop,
                      arguments: BackDropArguments(
                        cateId: categories[i].id,
                        cateName: categories[i].name,
                      ),
                      context: context,
                    ),
                    child: Container(
                      width: gridSize,
                      margin: EdgeInsets.symmetric(
                        horizontal: _itemPadding,
                        vertical: 8,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: SizedBox(
                                width: gridSize,
                                height: gridSize,
                                child:
                                    FluxImage(imageUrl: categories[i].image!),
                              ),
                            ),
                            const SizedBox(height: 8.0),
                            Text(
                              categories[i].name!.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .apply(fontSizeFactor: 0.9),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )..insertAll(
                  0,
                  [
                    if (widget.parentCategoryImage != null &&
                        widget.parentCategoryImage!.isNotEmpty)
                      GestureDetector(
                        onTap: _seeAllProduct,
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(
                            maxHeight: 150.0,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  child: FluxImage(
                                    imageUrl: widget.parentCategoryImage!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    if ((widget.parentCategoryImage != null &&
                            widget.parentCategoryImage!.isNotEmpty) &&
                        (categories.isEmpty))
                      Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        padding: const EdgeInsets.all(4.0),
                        alignment: Alignment.centerRight,
                        child: InkResponse(
                          onTap: _seeAllProduct,
                          child: Text(
                            S.of(context).seeAll,
                            style: TextStyle(
                              fontSize: kIsWeb ? 18 : 14,
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    if ((widget.parentCategoryImage == null ||
                            widget.parentCategoryImage!.isEmpty) &&
                        (categories.isEmpty))
                      SizedBox(
                        height: constraints.maxHeight,
                        child: Center(
                          child: InkResponse(
                            onTap: _seeAllProduct,
                            child: Text(
                              S.of(context).seeAll,
                              style: TextStyle(
                                fontSize: kIsWeb ? 18 : 14,
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
            ),
          ),
        );
      },
    );
  }

  void _seeAllProduct() {
    FluxNavigate.pushNamed(
      RouteList.backdrop,
      arguments: BackDropArguments(
        cateId: widget.parentCategory!.id,
        cateName: widget.parentCategory!.name,
      ),
      context: context,
    );
  }
}
