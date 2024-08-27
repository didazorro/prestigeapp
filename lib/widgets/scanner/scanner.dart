import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/entities/index.dart';
import '../../routes/flux_navigate.dart';
import '../../screens/order_history/index.dart';
import 'scanner_model.dart';

class Scanner extends StatelessWidget {
  final User? user;

  const Scanner({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return Provider<ScannerModel>(
      create: (_) => ScannerModel(user),
      child: ScannerIndex(
        user: user,
      ),
    );
  }
}

class ScannerIndex extends StatefulWidget {
  final User? user;

  const ScannerIndex({super.key, this.user});

  @override
  State<ScannerIndex> createState() => _ScannerIndexState();
}

class _ScannerIndexState extends State<ScannerIndex> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  var _isScanning = false;

  bool _didCallback = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (kReleaseMode) {
      return;
    }
    if (isAndroid) {
      controller?.pauseCamera();
    } else if (isIos) {
      controller?.resumeCamera();
    }
  }

  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 2),
        ))
        .closed
        .then((value) {
      _isScanning = false;
    });
  }

  void _navigate(data) async {
    if (data == null) {
      _isScanning = false;
      return;
    }

    var route;
    var arg;

    switch (data.runtimeType) {
      // `case const (Product):` is the same as `case Product:`,
      // not same `case Product _:` or `case Product():`
      case const (Product):
        route = RouteList.productDetail;
        arg = data;
        break;
      case const (Order):
        route = RouteList.orderDetail;
        final orderHistoryDetailModel = OrderHistoryDetailModel(
          order: data,
          user: widget.user!,
        );
        arg = OrderDetailArguments(model: orderHistoryDetailModel);
        break;
      default:
        if (data == 'invalid_login') {
          _showMessage(S.of(context).scannerLoginFirst);
        }
        if (data == 'unauthorized') {
          _showMessage(S.of(context).scannerOrderAvailable);
        }
        if (data == 'invalid_data') {
          _showMessage(S.of(context).scannerCannotScan);
        }

        _isScanning = false;
        return;
    }

    if (route != null) {
      await FluxNavigate.pushNamed(
        route,
        arguments: arg,
        context: context,
      );
    }
    _isScanning = false;
  }

  Future<void> _onQRViewCreated(QRViewController controller) async {
    this.controller = controller;
    final model = Provider.of<ScannerModel>(context, listen: false);
    if (isAndroid) {
      // Android not open camera on first time.
      await controller.resumeCamera();
    }
    controller.scannedDataStream.listen((scanData) {
      if (_isScanning) {
        return;
      }
      _isScanning = true;

      if (scanData.code != null) {
        model.getDataFromScanner(scanData.code!).then(_navigate);
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: <Widget>[
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            onPermissionSet: (controller, result) async {
              if (_didCallback) {
                return;
              }
              _didCallback = true;

              if (!result && Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
          ),
          SafeArea(
            child: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Icon(
                isIos ? Icons.arrow_back_ios : Icons.arrow_back,
                color: Theme.of(context).iconTheme.color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
