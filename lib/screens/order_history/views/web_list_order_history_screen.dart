import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../models/index.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/common/paging_mixin.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../common/app_bar_mixin.dart';
import '../constants/enums.dart';
import '../models/list_order_history_model.dart';
import '../models/order_history_detail_model.dart';
import 'widgets/order_list_item.dart';
import 'widgets/order_list_loading_item.dart';

class WebListOrderHistoryScreen extends StatefulWidget {
  @override
  State<WebListOrderHistoryScreen> createState() =>
      _WebListOrderHistoryScreenState();
}

class _WebListOrderHistoryScreenState extends State<WebListOrderHistoryScreen>
    with AppBarMixin, SingleTickerProviderStateMixin, PagingMixin {
  var mapOrderHistoryDetailModel = <int, OrderHistoryDetailModel>{};
  final _scrollController = ScrollController();
  // final int _currentStatusFilter = 0;
  late final TabController _tabController;

  ListOrderHistoryModel get listOrderHistoryModel =>
      Provider.of<ListOrderHistoryModel>(context, listen: false);
  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  Color get primaryColor => Theme.of(context).primaryColor;

  List<MyOrderStatus> get listOrderStatus => MyOrderStatus.values;

  @override
  bool get hasNext => listOrderHistoryModel.hasNext;

  @override
  Future<void> getData() async {
    await listOrderHistoryModel.getData();
  }

  @override
  ScrollController get scrollController => _scrollController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listOrderStatus.length, vsync: this);
    WidgetsBinding.instance.endOfFrame.then((_) {
      listOrderHistoryModel.getData();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context, listen: false).user ?? User();
    // var isLoading =
    //     listOrderHistoryModel.isFirstLoad || listOrderHistoryModel.isLoadMore;

    // void onTapOrderFilter(int index) {
    //   if (isLoading || _currentStatusFilter == index) {
    //     _tabController.index = _currentStatusFilter;
    //     return;
    //   }

    //   mapOrderHistoryDetailModel.clear();
    //   Provider.of<ListOrderHistoryModel>(context, listen: false)
    //       .setStatus(listOrderStatus[index].status);
    //   setState(() {
    //     _currentStatusFilter = index;
    //   });
    // }

    return renderScaffold(
      routeName: RouteList.orders,
      backgroundColor: colorScheme.surface,
      child: Consumer<ListOrderHistoryModel>(
        builder: (context, model, _) {
          final List<Order> orders = model.data;

          return SliverWebLayout(
            scrollController: _scrollController,
            slivers: [
              // if (Services().widget.isSupportFilterOrder)
              //   SliverToBoxAdapter(
              //     child: Center(
              //       child: SizedBox(
              //         height: 30,
              //         child: TabBar(
              //           controller: _tabController,
              //           isScrollable: true,
              //           onTap: (value) => onTapOrderFilter(value),
              //           indicatorColor: primaryColor,
              //           tabs: List.generate(
              //             listOrderStatus.length,
              //             (index) {
              //               return Tab(
              //                 child: Container(
              //                   constraints: const BoxConstraints(minWidth: 80),
              //                   padding: const EdgeInsetsDirectional.symmetric(
              //                       horizontal: 12.0),
              //                   child: Center(
              //                     child: Text(
              //                       listOrderStatus[index].getName(context),
              //                       style: const TextStyle(fontSize: 15),
              //                     ),
              //                   ),
              //                 ),
              //               );
              //             },
              //           ),
              //           labelColor: primaryColor,
              //         ),
              //       ),
              //     ),
              //   ),
              CupertinoSliverRefreshControl(
                onRefresh: () async {
                  await model.refresh();
                  mapOrderHistoryDetailModel.clear();
                },
              ),
              if (model.isFirstLoad)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: LayoutLimitWidthScreen(
                    child: Column(
                      children: List.generate(
                          4, (index) => const OrderListLoadingItem()),
                    ),
                  ),
                )
              else
                SliverList.separated(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    final order = orders[index];

                    if (mapOrderHistoryDetailModel[index] == null) {
                      final orderHistoryDetailModel = OrderHistoryDetailModel(
                        order: order,
                        user: user,
                      );
                      mapOrderHistoryDetailModel[index] =
                          orderHistoryDetailModel;
                    }
                    return LayoutLimitWidthScreen(
                      child:
                          ChangeNotifierProvider<OrderHistoryDetailModel>.value(
                        value: mapOrderHistoryDetailModel[index]!,
                        child: const OrderListItem(isModal: true),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 4),
                ),
              SliverToBoxAdapter(
                child: model.isLoadMore
                    ? Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0,
                          top: 10.0,
                        ),
                        child: kLoadingWidget(context),
                      )
                    : const SizedBox(),
              ),
            ],
          );
        },
      ),
    );
  }
}
