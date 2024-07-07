import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/config.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/entities/tera_wallet/wallet_payment_method.dart';
import '../../../../models/tera_wallet/index.dart';
import '../../../../models/tera_wallet/wallet_request_model.dart';
import '../../helpers/wallet_helpers.dart';
import '../withdrawal_screen.dart';

InputDecoration defaultInputDecoration(BuildContext context) => InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: BorderSide(
          color: Theme.of(context).dividerColor,
        ),
      ),
    );

class SubmitRequestForm extends StatefulWidget {
  const SubmitRequestForm({super.key});

  @override
  State<SubmitRequestForm> createState() => _SubmitRequestFormState();
}

class _SubmitRequestFormState extends State<SubmitRequestForm> {
  final _formKey = GlobalKey<FormState>();
  late WalletPaymentMethod? _selected =
      Provider.of<WalletRequestModel>(context, listen: false)
          .paymentMethods
          ?.first;
  double? _amount;

  bool _isSubmitLoading = false;
  String? _errorMsg;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final walletRequestModel =
          Provider.of<WalletRequestModel>(context, listen: false);
      if (walletRequestModel.paymentMethods?.isEmpty ?? true) {
        walletRequestModel.getPaymentMethods();
      }
      Provider.of<WalletModel>(context, listen: false).getBalance();
    });
  }

  @override
  Widget build(BuildContext context) {
    final balance = Provider.of<WalletModel>(context).balance;
    final enableBtn = (_amount ?? 0.0) > 0 && _selected != null;

    return Consumer<WalletRequestModel>(builder: (context, model, _) {
      if ((model.paymentMethods?.isNotEmpty ?? false) && _selected == null) {
        _selected = model.paymentMethods!.first;
      }
      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                text: '${S.of(context).balance}: ',
                style: Theme.of(context).textTheme.titleSmall,
                children: <TextSpan>[
                  TextSpan(
                      text: WalletHelpers.parseNumberToCurrencyText(balance),
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Container(
                    constraints: const BoxConstraints(minWidth: 130),
                    child: Text(S.of(context).withdrawAmount,
                        style: Theme.of(context).textTheme.titleSmall)),
                const SizedBox(width: 15),
                Expanded(
                    child: TextFormField(
                  onChanged: (String value) {
                    setState(() {
                      _amount = double.tryParse(value);
                    });
                  },
                  style: Theme.of(context).textTheme.titleSmall,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  decoration: defaultInputDecoration(context).copyWith(
                    prefix: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        kAdvanceConfig.defaultCurrency?.symbol ?? '',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                  ),
                )),
              ],
            ),
            const SizedBox(height: 10),
            if (model.paymentMethods?.isNotEmpty ?? false)
              Row(
                children: [
                  Container(
                      constraints: const BoxConstraints(minWidth: 130),
                      child: Text(S.of(context).paymentMethod,
                          style: Theme.of(context).textTheme.titleSmall)),
                  const SizedBox(width: 15),
                  Expanded(
                    child: DropdownButtonFormField<WalletPaymentMethod>(
                      value: _selected,
                      onChanged: (WalletPaymentMethod? value) {
                        setState(() {
                          _selected = value;
                        });
                      },
                      items: model.paymentMethods!
                          .map<DropdownMenuItem<WalletPaymentMethod>>(
                              (WalletPaymentMethod value) {
                        return DropdownMenuItem<WalletPaymentMethod>(
                          value: value,
                          child: Text(value.title,
                              style: Theme.of(context).textTheme.titleSmall),
                        );
                      }).toList(),
                      decoration: defaultInputDecoration(context).copyWith(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 6)),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 20),
            if (_errorMsg?.isNotEmpty ?? false)
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: Text(
                    _errorMsg!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            GestureDetector(
              onTap: () {
                if (enableBtn) {
                  setState(() {
                    _isSubmitLoading = true;
                    _errorMsg = null;
                  });
                  model.submitRequest(_selected!, _amount!).then((value) {
                    setState(() {
                      _isSubmitLoading = false;
                    });
                    model.getRequests(type: RequestType.pending);
                  }).catchError((e) {
                    setState(() {
                      _isSubmitLoading = false;
                      _errorMsg = e.toString();
                    });
                  });
                }
              },
              child: Container(
                width: double.infinity,
                height: 44,
                alignment: FractionalOffset.center,
                decoration: BoxDecoration(
                  color: enableBtn
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).disabledColor,
                  borderRadius: const BorderRadius.all(Radius.circular(22.0)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: !_isSubmitLoading
                    ? Text(
                        S.of(context).submit,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: Colors.white),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      )
                    : const SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          value: null,
                          strokeWidth: 1.0,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
