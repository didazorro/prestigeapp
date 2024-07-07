import 'package:flutter/material.dart';
import 'package:inspireui/icons/constants.dart';
import 'package:provider/provider.dart';

import '../../../common/theme/colors.dart';
import '../../../models/category/category_model.dart';
import '../../../widgets/common/background_color_widget.dart';
import '../../../widgets/common/index.dart';
import '../../../widgets/web_layout/widgets/mouse_hover_transition.dart';
import '../helper/helper.dart';
import '../index.dart';

/// List of Category Items
class CategoryTwoRow extends StatefulWidget {
  final CategoryConfig config;
  final Function onShowProductList;

  const CategoryTwoRow(
      {required this.config, super.key, required this.onShowProductList});

  @override
  State<CategoryTwoRow> createState() => _CategoryTwoRowState();
}

class _CategoryTwoRowState extends State<CategoryTwoRow> {
  final _pageController = PageController();
  int get lengthPage {
    var items = widget.config.items;
    final countAllItem = items.length;
    var page = countAllItem ~/ maxItemInPage;
    if (page * maxItemInPage < countAllItem) {
      page += 1;
    }
    return page;
  }

  final maxRow = 2;
  int get maxItemInPage {
    final isDesktop = Layout.isDisplayDesktop(context);
    final maxItem = isDesktop ? 8 : 4;
    return maxItem;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (Layout.isDisplayDesktop(context)) {
        Future.delayed(const Duration(microseconds: 500)).then((value) {
          setState(() {});
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BackgroundColorWidget(
      enable: widget.config.enableBackground,
      child: Builder(
        builder: (_) {
          final isDesktop = Layout.isDisplayDesktop(context);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.config.commonItemConfig.title?.isNotEmpty ?? false)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 16, bottom: 10),
                  child: Text(
                    widget.config.commonItemConfig.title!,
                    style: isDesktop
                        ? Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.w700)
                        : Theme.of(context).textTheme.titleLarge,
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (isDesktop)
                    AnimatedBuilder(
                      animation: _pageController,
                      builder: (context, child) {
                        final isEnable = _pageController.hasClients &&
                            _pageController.page != null &&
                            (_pageController.page! - 1) >= 0;

                        return IconButton(
                          onPressed: () {
                            if (isEnable) {
                              final prevPage =
                                  _pageController.page!.toInt() - 1;
                              if (prevPage >= 0) {
                                _pageController.animateToPage(
                                  prevPage,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              }
                            }
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: isEnable ? null : kGrey200,
                          ),
                        );
                      },
                    ),
                  Expanded(
                    child: LayoutBuilder(builder: (context, constraints) {
                      final isDesktop = Layout.isDisplayDesktop(context);
                      final heightList = isDesktop ? 350.0 : 200.0;
                      final screenSize = MediaQuery.sizeOf(context);
                      final maxWidth = (screenSize.width > kLimitWidthScreen
                              ? kLimitWidthScreen
                              : screenSize.width) -
                          widget.config.marginLeft -
                          widget.config.marginRight;
                      final itemWidth = (maxWidth / 2);

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: heightList,
                            child: rendorColumns(
                              context,
                              widget.config.columns!,
                              maxItemWidth: itemWidth,
                              maxItemHeight: heightList / 2,
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                  if (isDesktop)
                    AnimatedBuilder(
                      animation: _pageController,
                      builder: (context, child) {
                        final isEnable = _pageController.hasClients &&
                            _pageController.page != null &&
                            (_pageController.page!.toInt() + 1) < lengthPage;

                        return IconButton(
                          onPressed: () {
                            if (isEnable) {
                              final nextPage =
                                  _pageController.page!.toInt() + 1;

                              if (nextPage < lengthPage) {
                                _pageController.animateToPage(
                                  nextPage,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeIn,
                                );
                              }
                            }
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: isEnable ? null : kGrey200,
                          ),
                        );
                      },
                    ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget rendorColumns(
    BuildContext context,
    int column, {
    double? maxItemWidth,
    double? maxItemHeight,
  }) {
    var items = widget.config.items;
    final countAllItem = items.length;

    return PageView(
      controller: _pageController,
      children: List.generate(
        lengthPage,
        (pageIndex) {
          var countProductPage = (pageIndex + 1) * maxItemInPage;
          if (countProductPage > countAllItem) {
            countProductPage = countAllItem - (pageIndex * maxItemInPage);
          } else {
            countProductPage = maxItemInPage;
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(
              maxRow,
              (indexRow) {
                return Expanded(
                  child: Row(
                    children: List.generate(
                      maxItemInPage ~/ maxRow,
                      (indexColumn) {
                        final indexItem = pageIndex * maxItemInPage +
                            (indexRow * (maxItemInPage ~/ maxRow)) +
                            indexColumn;
                        CategoryItemConfig? item;

                        if (indexItem < items.length) {
                          item = items[indexItem];
                        }

                        final categoryList =
                            Provider.of<CategoryModel>(context).categoryList;

                        final id = item?.category;
                        final categoryName = widget.config.commonItemConfig
                                .getCategoryItemName(item) ??
                            (categoryList[id] != null
                                ? categoryList[id]!.name
                                : '');

                        final isDesktopLayout =
                            Layout.isDisplayDesktop(context);

                        return Expanded(
                          child: Container(
                            height: maxItemHeight,
                            margin:
                                EdgeInsets.all(isDesktopLayout ? 10.0 : 4.0),
                            child: item != null
                                ? MouseHoverTransition(
                                    child: GestureDetector(
                                      onTap: () => widget.onShowProductList(
                                          item!..name = categoryName),
                                      behavior: HitTestBehavior.translucent,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: FluxImage(
                                                imageUrl: item.image ?? '',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Container(
                                                decoration: const BoxDecoration(
                                                  gradient: LinearGradient(
                                                    end: Alignment.center,
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    colors: [
                                                      Colors.black87,
                                                      Colors.transparent,
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional
                                                  .bottomStart,
                                              child: Padding(
                                                padding: EdgeInsets.all(
                                                    isDesktopLayout ? 12 : 8),
                                                child: Text(
                                                  item.title ?? '',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelMedium
                                                      ?.copyWith(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize:
                                                            isDesktopLayout
                                                                ? 18
                                                                : 14,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : const SizedBox(),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
