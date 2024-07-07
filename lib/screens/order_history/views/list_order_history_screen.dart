import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../services/services.dart';
import '../../../widgets/common/paging_list.dart';
import '../../common/app_bar_mixin.dart';
import '../constants/enums.dart';
import '../models/list_order_history_model.dart';
import '../models/order_history_detail_model.dart';
import 'widgets/order_item.dart';
import 'widgets/order_loading_item.dart';

class ListOrderHistoryScreen extends StatefulWidget {
  @override
  State<ListOrderHistoryScreen> createState() => _ListOrderHistoryScreenState();
}

class _ListOrderHistoryScreenState extends State<ListOrderHistoryScreen>
    with AppBarMixin, SingleTickerProviderStateMixin {
  var mapOrderHistoryDetailModel = <int, OrderHistoryDetailModel>{};
  int _currentStatusFilter = 0;
  late final TabController _tabController;

  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  Color get primaryColor => Theme.of(context).primaryColor;

  List<MyOrderStatus> get listOrderStatus => MyOrderStatus.values;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: listOrderStatus.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context, listen: false).user ?? User();
    final listOrderHistoryModel = Provider.of<ListOrderHistoryModel>(context);
    var isLoading =
        listOrderHistoryModel.isFirstLoad || listOrderHistoryModel.isLoadMore;

    void onTapOrderFilter(int index) {
      if (isLoading || _currentStatusFilter == index) {
        _tabController.index = _currentStatusFilter;
        return;
      }

      mapOrderHistoryDetailModel.clear();
      Provider.of<ListOrderHistoryModel>(context, listen: false)
          .setStatus(listOrderStatus[index].status);
      setState(() {
        _currentStatusFilter = index;
      });
    }

    return renderScaffold(
      routeName: RouteList.orders,
      secondAppBar: AppBar(
        title: Text(
          S.of(context).orderHistory,
          style: TextStyle(
            color: colorScheme.secondary,
          ),
        ),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: colorScheme.secondary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: colorScheme.surface,
      child: Column(
        children: [
          if (Services().widget.isSupportFilterOrder)
            TabBar(
              controller: _tabController,
              isScrollable: true,
              onTap: (value) => onTapOrderFilter(value),
              indicatorColor: primaryColor,
              tabs: List.generate(
                listOrderStatus.length,
                (index) {
                  return Tab(
                    child: Container(
                      constraints: const BoxConstraints(minWidth: 80),
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 12.0),
                      child: Center(
                        child: Text(
                          listOrderStatus[index].getName(context),
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
              labelColor: primaryColor,
            ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              child: PagingList<ListOrderHistoryModel, Order>(
                  onRefresh: mapOrderHistoryDetailModel.clear,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (_, order, index) {
                    if (mapOrderHistoryDetailModel[index] == null) {
                      final orderHistoryDetailModel = OrderHistoryDetailModel(
                        order: order,
                        user: user,
                      );
                      mapOrderHistoryDetailModel[index] =
                          orderHistoryDetailModel;
                    }
                    return ChangeNotifierProvider<
                        OrderHistoryDetailModel>.value(
                      value: mapOrderHistoryDetailModel[index]!,
                      child: const OrderItem(),
                    );
                  },
                  lengthLoadingWidget: 3,
                  loadingWidget: const OrderLoadingItem(),
                  emptyWidget: SizedBox(
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/leaves.png',
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(height: 60),
                            Text(S.of(context).yourOrderIsEmpty,
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center),
                            const SizedBox(height: 20),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(S.of(context).yourOrderIsEmptyMsg,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                  textAlign: TextAlign.center),
                            ),
                            const SizedBox(height: 50)
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
