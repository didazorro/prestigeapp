import 'package:flutter/cupertino.dart';
import 'package:inspireui/widgets/skeleton_widget/skeleton_widget.dart';
import 'package:provider/provider.dart';

import '../../../../common/constants.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/entities/index.dart';
import '../../../../models/vendor/store_model.dart';
import '../../../../widgets/common/paging_mixin.dart';
import '../../../../widgets/common/refresh_scroll_physics.dart';

class StoreGridStyleLayout extends StatefulWidget {
  final String? searchName;
  final double childAspectRatio;
  final Function(Store store, int index) itemBuilder;
  final int countVendor;

  const StoreGridStyleLayout({
    this.searchName,
    this.childAspectRatio = 1,
    required this.itemBuilder,
    required this.countVendor,
  });

  @override
  State<StoreGridStyleLayout> createState() => _StateStoreGridStyleLayout();
}

class _StateStoreGridStyleLayout extends State<StoreGridStyleLayout>
    with PagingMixin {
  StoreModel get storeModel => Provider.of<StoreModel>(context, listen: false);
  String get searchName => widget.searchName ?? '';

  @override
  bool get hasNext => storeModel.isEnd == false;

  @override
  late final ScrollController scrollController = ScrollController();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Future<void> getData() async {
    await storeModel.loadStore(name: searchName);
    return;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Consumer<StoreModel>(
          builder: (context, model, child) {
            var stores = model.stores ?? <Store>[];

            if ((model.stores?.isEmpty ?? true) &&
                searchName.isNotEmpty &&
                !model.isLoading) {
              return Center(
                child: Text(S.of(context).noResultFound),
              );
            }

            if (stores.isEmpty && !model.isLoading) {
              return Center(
                child: Text(S.of(context).dataEmpty),
              );
            }

            return CustomScrollView(
              controller: scrollController,
              physics: const RefreshScrollPhysics(),
              slivers: [
                CupertinoSliverRefreshControl(
                  onRefresh: () async {
                    await model.refreshStore(name: searchName);
                  },
                ),
                stores.isEmpty && model.isLoading
                    ? SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: widget.countVendor,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                          childAspectRatio: widget.childAspectRatio,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return const Skeleton(
                              width: double.infinity,
                              height: double.infinity,
                            );
                          },
                          childCount: widget.countVendor * 5,
                        ),
                      )
                    : SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: widget.countVendor,
                          mainAxisSpacing: 4.0,
                          crossAxisSpacing: 4.0,
                          childAspectRatio: widget.childAspectRatio,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            if (index >= stores.length) {
                              if (model.isLoading) {
                                return const Skeleton(
                                  width: double.infinity,
                                  height: double.infinity,
                                );
                              }
                              return const SizedBox();
                            }

                            final store = stores[index];

                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, RouteList.storeDetail,
                                    arguments:
                                        StoreDetailArgument(store: store));
                              },
                              child: widget.itemBuilder(store, index),
                            );
                          },
                          childCount: stores.length +
                              widget.countVendor -
                              stores.length % widget.countVendor,
                        ),
                      ),
              ],
            );
          },
        ),
        scrollToTopButton,
      ],
    );
  }
}
