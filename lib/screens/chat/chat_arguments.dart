import '../../models/index.dart' show Product, User;

class ChatArguments {
  final User? senderUser;
  final String? receiverEmail;
  final String? receiverName;
  final Product? product;

  ChatArguments({
    required this.senderUser,
    required this.receiverEmail,
    required this.receiverName,
    this.product,
  });
}
