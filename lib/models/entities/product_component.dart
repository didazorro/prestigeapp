import '../../common/tools/price_tools.dart';
import 'product.dart';
import 'product_variation.dart';

class ProductComponent {
  final String? id;
  final String? name;
  final String? description;
  final String? optionType;
  final String? optionStyle;
  final int? minQuantity;
  final int? maxQuantity;
  final double? discount;
  final bool required;
  final List<Product>? products;

  const ProductComponent({
    this.id,
    this.name,
    this.description,
    this.optionType,
    this.optionStyle,
    this.minQuantity,
    this.maxQuantity,
    this.discount,
    this.required = false,
    this.products,
  });

  factory ProductComponent.fromJson(Map json) {
    var products = <Product>[];
    if (json['option_type_products'] != null) {
      final List<dynamic> values = json['option_type_products'] ?? [];
      products = List<Product>.generate(
        values.length,
        (index) => Product.fromJson(values[index]),
      );
    }

    return ProductComponent(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        optionType: json['option_type'],
        optionStyle: json['option_style'],
        minQuantity: json['min_quantity'] == null ||
                json['min_quantity'] == '' ||
                int.tryParse("${json['min_quantity']}") == null
            ? null
            : int.parse("${json['min_quantity']}"),
        maxQuantity: json['max_quantity'] == null ||
                json['max_quantity'] == '' ||
                int.tryParse("${json['max_quantity']}") == null
            ? null
            : int.parse("${json['max_quantity']}"),
        discount: json['discount'] == null ||
                json['discount'] == '' ||
                double.tryParse("${json['discount']}") == null
            ? null
            : double.parse("${json['discount']}"),
        required: json['required'] == true,
        products: products);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['option_type'] = optionType;
    data['option_style'] = optionStyle;
    data['min_quantity'] = minQuantity;
    data['max_quantity'] = maxQuantity;
    data['discount'] = discount;
    data['required'] = required;
    if (products != null) {
      data['option_type_products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SelectedProductComponent {
  final ProductComponent component;
  final Product product;
  final ProductVariation? variant;
  final int? quantity;
  final bool cpPerItemPricing;

  const SelectedProductComponent({
    required this.product,
    this.variant,
    this.quantity,
    required this.component,
    required this.cpPerItemPricing,
  });

  SelectedProductComponent copyWith({
    ProductVariation? variant,
    int? quantity,
  }) {
    return SelectedProductComponent(
      product: product,
      component: component,
      variant: variant ?? this.variant,
      quantity: quantity ?? this.quantity,
      cpPerItemPricing: cpPerItemPricing,
    );
  }

  SelectedProductComponent removeVariant() {
    return SelectedProductComponent(
      product: product,
      component: component,
      quantity: quantity,
      cpPerItemPricing: cpPerItemPricing,
    );
  }

  double? getPrice() {
    if (!cpPerItemPricing) return 0.0;
    if (variant != null) {
      return double.parse(variant?.price ?? '0') * (quantity ?? 0);
    } else {
      var price = PriceTools.getPriceProductValue(product, onSale: true);
      if (price?.isNotEmpty ?? false) {
        return double.parse(price!) * (quantity ?? 0);
      }
      return 0.0;
    }
  }

  factory SelectedProductComponent.fromLocalJson(Map json) {
    return SelectedProductComponent(
      component: ProductComponent.fromJson(json['component']),
      product: Product.fromLocalJson(json['product']),
      variant: json['variant'] != null
          ? ProductVariation.fromLocalJson(json['variant'])
          : null,
      quantity: json['quantity'],
      cpPerItemPricing: json['cpPerItemPricing'] == true,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['component'] = component.toJson();
    data['product'] = product.toJson();
    data['variant'] = variant?.toJson();
    data['quantity'] = quantity;
    data['cpPerItemPricing'] = cpPerItemPricing;
    return data;
  }
}
