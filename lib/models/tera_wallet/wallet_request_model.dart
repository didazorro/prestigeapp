import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../modules/tera_wallet/views/withdrawal_screen.dart';
import '../../services/index.dart';
import '../../services/wallet/wallet_services.dart';
import '../entities/tera_wallet/wallet_payment_method.dart';
import '../entities/tera_wallet/wallet_request.dart';

class WalletRequestModel with ChangeNotifier {
  WalletRequestModel({String? token}) : _token = token;

  final String? _token;
  final _walletServices = injector<WalletServices>();

  var _isLoading = false;
  bool get isLoading => _isLoading;

  List<WalletRequest>? _requests;
  List<WalletRequest>? get requests => _requests;

  var _isPaymentLoading = false;
  bool get isPaymentLoading => _isPaymentLoading;

  List<WalletPaymentMethod>? _paymentMethods;
  List<WalletPaymentMethod>? get paymentMethods => _paymentMethods;

  Future<void> getRequests({
    required RequestType type,
  }) async {
    try {
      _isLoading = true;
      notifyListeners();
      if (type == RequestType.pending) {
        _requests =
            await _walletServices.getPendingRequests(token: _token ?? '');
      }
      if (type == RequestType.approved) {
        _requests =
            await _walletServices.getApprovedRequests(token: _token ?? '');
      }
      if (type == RequestType.cancelled) {
        _requests =
            await _walletServices.getCancelledRequests(token: _token ?? '');
      }
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<void> getPaymentMethods() async {
    try {
      _isPaymentLoading = true;
      notifyListeners();
      _paymentMethods = await _walletServices.getPaymentMethods();

      _isPaymentLoading = false;
      notifyListeners();
    } catch (e) {
      _isPaymentLoading = false;
      notifyListeners();
      rethrow;
    }
  }

  Future<bool?> submitRequest(WalletPaymentMethod method, double amount) async {
    try {
      var success = await _walletServices.submitRequest(
          token: _token ?? '', paymentMethod: method.id, amount: amount);
      if (success) {
        return true;
      } else {
        throw S.current.somethingWrong;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<WalletPaymentFormFieldValue>?> getPaymentSettings(
      {required WalletPaymentMethod method}) async {
    return _walletServices.getPaymentSettings(
        token: _token ?? '', paymentMethod: method.id);
  }

  Future<bool?> savePaymentSettings(
      WalletPaymentMethod method, Map fields) async {
    try {
      var success = await _walletServices.savePaymentSettings(
          token: _token ?? '', paymentMethod: method.id, fields: fields);
      if (success) {
        return true;
      } else {
        throw S.current.somethingWrong;
      }
    } catch (e) {
      rethrow;
    }
  }
}
