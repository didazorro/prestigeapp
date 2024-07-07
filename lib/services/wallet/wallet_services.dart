import '../../models/entities/tera_wallet/transaction.dart';
import '../../models/entities/tera_wallet/wallet_payment_method.dart';
import '../../models/entities/tera_wallet/wallet_request.dart';
import '../../models/entities/transfer_form.dart';
import '../../models/index.dart';
import '../base_services.dart';

abstract class WalletServices {
  Future<double> getBalance({required String token});

  Future<PagingResponse<Transaction>> getTransactions({
    required dynamic page,
    required String token,
  });

  Future<void> processPayment({
    required String orderId,
    String? token,
  });

  Future<void> partialPayment({
    required String orderId,
    String? token,
  });

  Future<Product?> checkRecharge({required int amount});

  Future<User> checkEmailTransfer({
    required String email,
    required String token,
  });

  Future<bool> transfer({
    required String token,
    required TransferForm transferForm,
  });

  Future<List<WalletPaymentMethod>?> getPaymentMethods();

  Future<List<WalletRequest>?> getPendingRequests({required String token});

  Future<List<WalletRequest>?> getApprovedRequests({required String token});

  Future<List<WalletRequest>?> getCancelledRequests({required String token});

  Future<bool> submitRequest(
      {required String token,
      required String paymentMethod,
      required double amount});

  Future<List<WalletPaymentFormFieldValue>?> getPaymentSettings(
      {required String token, required String paymentMethod});

  Future<bool> savePaymentSettings(
      {required String token,
      required String paymentMethod,
      required Map fields});
}
