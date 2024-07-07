import '../../models/entities/paging_response.dart';
import '../../models/entities/product.dart';
import '../../models/entities/tera_wallet/transaction.dart';
import '../../models/entities/tera_wallet/wallet_payment_method.dart';
import '../../models/entities/tera_wallet/wallet_request.dart';
import '../../models/entities/transfer_form.dart';
import '../../models/entities/user.dart';
import 'wallet_services.dart';

class WalletServicesImpl implements WalletServices {
  @override
  Future<double> getBalance({required String token}) async {
    return 0.0;
  }

  @override
  Future<PagingResponse<Transaction>> getTransactions(
      {required page, required token}) async {
    return const PagingResponse(data: [Transaction()]);
  }

  @override
  Future<void> processPayment({required String orderId, String? token}) async {}

  @override
  Future<void> partialPayment({required String orderId, String? token}) async {}

  @override
  Future<Product?> checkRecharge({required int amount}) async {
    return null;
  }

  @override
  Future<User> checkEmailTransfer(
      {required String email, required String token}) async {
    return User();
  }

  @override
  Future<bool> transfer({
    required String token,
    required TransferForm transferForm,
  }) async {
    return true;
  }

  @override
  Future<List<WalletRequest>?> getApprovedRequests({required String token}) {
    // TODO: implement getApprovedRequests
    throw UnimplementedError();
  }

  @override
  Future<List<WalletRequest>?> getCancelledRequests({required String token}) {
    // TODO: implement getCancelledRequests
    throw UnimplementedError();
  }

  @override
  Future<List<WalletPaymentMethod>?> getPaymentMethods() {
    // TODO: implement getPaymentMethods
    throw UnimplementedError();
  }

  @override
  Future<List<WalletRequest>?> getPendingRequests({required String token}) {
    // TODO: implement getPendingRequests
    throw UnimplementedError();
  }

  @override
  Future<bool> submitRequest(
      {required String token,
      required String paymentMethod,
      required double amount}) {
    // TODO: implement submitRequest
    throw UnimplementedError();
  }

  @override
  Future<List<WalletPaymentFormFieldValue>?> getPaymentSettings(
      {required String token, required String paymentMethod}) {
    // TODO: implement getPaymentSettings
    throw UnimplementedError();
  }

  @override
  Future<bool> savePaymentSettings(
      {required String token,
      required String paymentMethod,
      required Map fields}) {
    // TODO: implement savePaymentSettings
    throw UnimplementedError();
  }
}
