import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/enums/load_state.dart';
import '../../../generated/l10n.dart';
import '../../../models/brand_layout_model.dart';
import '../../../models/entities/brand.dart';
import '../../../modules/dynamic_layout/brand/widgets/brand_item.dart';
import 'widgets/menu_title_widget.dart';

class BrandFilterWidget extends StatefulWidget {
  const BrandFilterWidget({
    super.key,
    this.useExpansionStyle = true,
    this.onChanged,
    this.brandId,
  });

  final bool useExpansionStyle;
  final List<String>? brandId;
  final void Function(List<String>?)? onChanged;

  @override
  State<BrandFilterWidget> createState() => _BrandFilterWidgetState();
}

class _BrandFilterWidgetState extends State<BrandFilterWidget> {
  late final List<String> _brandId = widget.brandId ?? <String>[];
  void _update(Brand brand) {
    setState(() {
      if (_brandId.contains(brand.id.toString())) {
        _brandId.remove(brand.id.toString());
      } else {
        _brandId.add(brand.id.toString());
      }

      EasyDebounce.debounce(
        'debounceFilterBranch',
        const Duration(milliseconds: 1000),
        () {
          widget.onChanged?.call(_brandId);
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<BrandLayoutModel>(
      builder: (_, model, __) {
        final hadLoadmore = model.isEnded == false;
        final isLoading = model.state == FSLoadState.loading;
        final listBrand = model.listVisibleBrand ?? [];

        if (listBrand.isEmpty) {
          return const SizedBox();
        }

        final list = SizedBox(
          height: 130,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemCount: listBrand.length + (hadLoadmore ? 1 : 0),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, i) {
              if (i == listBrand.length && hadLoadmore) {
                return Center(
                  child: IconButton(
                    onPressed: isLoading ? null : () => model.loadMoreBrands(),
                    icon: isLoading
                        ? kLoadingWidget(context)
                        : const Icon(Icons.more_horiz_outlined),
                  ),
                );
              }

              final brand = listBrand.elementAt(i);

              return Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: _brandId.contains(brand.id.toString())
                        ? Colors.transparent
                        : Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(0.2),
                  ),
                  boxShadow: [
                    if (_brandId.contains(brand.id.toString()))
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.4),
                        blurRadius: 4,
                        spreadRadius: 2,
                      ),
                  ],
                ),
                child: BrandItem(
                  brand: brand,
                  onTap: () => _update(brand),
                  isBrandNameShown: true,
                  isLogoCornerRounded: true,
                ),
              );
            },
          ),
        );

        return MenuTitleWidget(
          title: S.of(context).brand,
          useExpansionStyle: widget.useExpansionStyle,
          child: list,
        );
      },
    );
  }
}
