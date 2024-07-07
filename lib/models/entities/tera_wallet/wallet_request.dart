class WalletRequest {
  const WalletRequest({this.price, this.status, this.time, this.payment});

  final String? price;
  final String? status;
  final String? time;
  final String? payment;

  factory WalletRequest.fromJson(Map json) => WalletRequest(
        price: json['price'],
        status: json['status'],
        time: json['time'],
        payment: json['payment'],
      );
}
