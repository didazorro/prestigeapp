import '../../../models/entities/paging_response.dart';
import '../../../models/entities/user.dart';
import '../../../models/order/order.dart';
import '../../../models/paging_data_model.dart';

class ListOrderVendorModel extends PagingDataModel<Order> {
  final User user;
  ListOrderVendorModel({
    required this.user,
  });

  @override
  Future<PagingResponse<Order>> Function(dynamic cursor) get requestApi =>
      (cursor) => api.getVendorOrders(
            user: user,
            cursor: cursor,
          );
}
