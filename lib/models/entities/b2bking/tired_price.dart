class B2BKingTiredPrice {
  const B2BKingTiredPrice({this.quantity, this.discount, this.price});

  final int? quantity;
  final double? discount;
  final double? price;

  factory B2BKingTiredPrice.fromJson(Map parsedJson) => B2BKingTiredPrice(
        quantity: parsedJson['quantity'],
        discount: double.tryParse('${parsedJson['discount']}') != null
            ? double.parse('${parsedJson['discount']}')
            : null,
        price: double.tryParse('${parsedJson['price']}') != null
            ? double.parse('${parsedJson['price']}')
            : null,
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['quantity'] = quantity;
    data['discount'] = discount;
    data['price'] = price;
    return data;
  }
}
