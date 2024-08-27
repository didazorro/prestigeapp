import 'package:flutter/material.dart';
import 'package:inspireui/inspireui.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/tera_wallet/wallet_model.dart';
import '../../models/tera_wallet/wallet_transfer_model.dart';
import 'views/index.dart';
import 'views/payment_settings_screen.dart';
import 'views/withdrawal_screen.dart';

class TeraWalletRoute {
  static dynamic getRoutesWithSettings(RouteSettings settings) {
    final routes = {
      RouteList.teraWalletTopUp: (context) => const TopUpScreen(),
      RouteList.myWallet: (BuildContext context) =>
          ChangeNotifierProvider.value(
            value: context.read<WalletModel>().walletTransactionModel,
            child: const MyWalletScreen(),
          ),
      RouteList.teraWalletTransfer: (context) {
        final arguments = settings.arguments;
        return ChangeNotifierProvider<WalletTransferModel>(
          create: (context) => WalletTransferModel(
            walletModel: context.read<WalletModel>(),
          ),
          builder: (context, snapshot) {
            if (arguments is TransferArguments) {
              return TransferScreen(email: arguments.email);
            }
            return const TransferScreen();
          },
        );
      },
      RouteList.teraWalletTransactions: (BuildContext context) =>
          ChangeNotifierProvider.value(
              value: context.read<WalletModel>().walletTransactionModel,
              builder: (context, snapshot) {
                return const TransactionScreen();
              }),
      RouteList.teraWalletTransactionDetail: (BuildContext context) {
        final arguments = settings.arguments;
        if (arguments is TransactionDetailArguments) {
          return TransactionDetailScreen(
            transaction: arguments.transaction,
          );
        }
        return const ErrorPage(message: 'Transaction Detail error arguments');
      },
      RouteList.teraWalletTransferSuccess: (context) =>
          const TransferSuccessScreen(),
      RouteList.teraWalletTransferFail: (context) {
        final arguments = settings.arguments;
        if (arguments is TransferFailArguments) {
          return TransferFailScreen(
            errorMessage: arguments.errorMessage,
          );
        }
        return TransferFailScreen(
          errorMessage: S.of(context).somethingWrong,
        );
      },
      RouteList.teraWalletWithdrawal: (BuildContext context) =>
          ChangeNotifierProvider.value(
              value: context.read<WalletModel>().walletRequestModel,
              builder: (context, snapshot) {
                return const WithdrawalScreen();
              }),
      RouteList.teraWalletWithdrawalSettings: (BuildContext context) =>
          ChangeNotifierProvider.value(
              value: context.read<WalletModel>().walletRequestModel,
              builder: (context, snapshot) {
                return const PaymentSettingsScreen();
              }),
    };
    return routes;
  }
}
