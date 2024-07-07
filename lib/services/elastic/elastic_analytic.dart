import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../data/boxes.dart';
import '../../models/entities/blog.dart';
import '../../models/entities/product.dart';
import '../../models/order/order.dart';
import '../../models/user_model.dart';
import '../../modules/analytics/abstract_analytic_trigger.dart';
import 'elastic_query.dart';
import 'elastic_service.dart';

class ElasticAnalytic extends AbstractAnalyticTrigger {
  Uri get uri => Uri.parse(Configurations.serverConfig['url']);
  String? get languageCode => SettingsBox().languageCode;

  @override
  void onTapProduct(Product value, String? itemListId, String? itemListName) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var source =
        'ctx._source.click = ctx._source.click != null ? ctx._source.click + 1 : 1';
    ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      script: {'source': source},
      mustList: mustList,
    );
    addSumary({'click': 1});
  }

  @override
  void onAddToCart(Product value, int? quantity, BuildContext? context) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var total = quantity ?? 1;
    var source =
        'ctx._source.cart_count = ctx._source.cart_count != null ? ctx._source.cart_count + $total : $total';
    ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      script: {
        'source': source,
      },
      mustList: mustList,
    );
    addSumary({'cart_count': total});
  }

  @override
  void addToWishList(Product value) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var source =
        'ctx._source.wishlist_count = ctx._source.wishlist_count != null ? ctx._source.wishlist_count + 1 : 1';
    ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      script: {'source': source},
      mustList: mustList,
    );
  }

  @override
  void onRemoveProductFromCart(
    Product value,
    int? quantity,
    BuildContext? context,
  ) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var total = quantity ?? 1;
    var source =
        'ctx._source.cart_count = ctx._source.cart_count != null ? ctx._source.cart_count - $total : 0';
    ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      script: {
        'source': source,
      },
      mustList: mustList,
    );
  }

  @override
  void onPurchased(Order value, BuildContext? context) {
    var lineItems = value.lineItems;
    for (var item in lineItems) {
      final mustList = ElasticActionList();
      final total = double.tryParse('${item.total ?? item.totalTax}');
      final id = item.productId ?? item.product?.id;
      if (id == null) return;
      mustList.addMatch(key: 'id', value: id);
      var source =
          'ctx._source.order_count = ctx._source.order_count != null ? ctx._source.order_count + 1 : 1';
      if (total != null) {
        source +=
            '; ctx._source.revenue = ctx._source.revenue != null ? ctx._source.revenue + $total : $total;';
      }
      ElasticService.updateDoc(
        uri: uri,
        languageCode: languageCode,
        script: {
          'source': source,
        },
        mustList: mustList,
      );
      addSumary({'order_count': 1, 'revenue': total});
    }
  }

  @override
  void onCreateRefund(Order value) {
    var lineItems = value.lineItems;
    for (var item in lineItems) {
      final mustList = ElasticActionList();
      final id = item.productId ?? item.product?.id;
      if (id == null) return;
      mustList.addMatch(key: 'id', value: id);
      var source =
          'ctx._source.refund_count = ctx._source.refund_count != null ? ctx._source.refund_count + 1 : 1';
      ElasticService.updateDoc(
        uri: uri,
        languageCode: languageCode,
        script: {
          'source': source,
        },
        mustList: mustList,
      );
    }
  }

  @override
  void onViewListProduct(List<Product> value, BuildContext? context) {}

  @override
  void onTapBlog(Blog value) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var source =
        'ctx._source.click = ctx._source.click != null ? ctx._source.click + 1 : 1';
    ElasticService.updateDoc(
      uri: uri,
      indiesName: IndiesName.blog,
      languageCode: languageCode,
      script: {
        'source': source,
      },
      mustList: mustList,
    );
  }

  @override
  void onAddBlogToWishList(Blog value) {
    final mustList = ElasticActionList();
    mustList.addMatch(key: 'id', value: value.id);
    var source =
        'ctx._source.wishlist_count = ctx._source.wishlist_count != null ? ctx._source.wishlist_count + 1 : 1';
    ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      indiesName: IndiesName.blog,
      script: {
        'source': source,
      },
      mustList: mustList,
    );
  }

  @override
  void onSearchProduct(String value, bool isEmpty, BuildContext? context) {
    var body = Map<String, dynamic>.from({
      'name': value,
      'is_empty': isEmpty,
    });
    if (context != null) {
      var userModel = context.read<UserModel>();
      body['id_user'] = userModel.user?.id;
    }
    ElasticService.addDoc(
      uri: uri,
      languageCode: languageCode,
      indiesName: IndiesName.search,
      body: body,
    );
  }

  Future<void> addSumary(Map map) async {
    var now = DateTime.now();
    var date = DateTime.utc(now.year, now.month, now.day);
    var source = '';
    var upsert = Map<String, dynamic>.from({
      'date': date.toIso8601String(),
    });
    map.forEach((key, value) {
      if (source.isNotEmpty) {
        source += '; ';
      }
      upsert[key] = value;
      source +=
          'ctx._source.$key = ctx._source.$key != null ? ctx._source.$key + $value : $value';
    });
    await ElasticService.updateDoc(
      uri: uri,
      languageCode: languageCode,
      indiesName: IndiesName.analytic,
      id: date.millisecondsSinceEpoch.toString(),
      script: {
        'source': source,
      },
      upsert: upsert,
    );
  }
}
