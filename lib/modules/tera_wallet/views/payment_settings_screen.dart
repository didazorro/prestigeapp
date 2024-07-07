import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/tera_wallet/wallet_payment_method.dart';
import '../../../models/tera_wallet/wallet_request_model.dart';
import '../../../widgets/common/custom_text_field.dart';

class PaymentSettingsScreen extends StatefulWidget {
  const PaymentSettingsScreen({super.key});

  @override
  State<PaymentSettingsScreen> createState() => _PaymentSettingsScreenState();
}

class _PaymentSettingsScreenState extends State<PaymentSettingsScreen> {
  late WalletPaymentMethod? _selected =
      Provider.of<WalletRequestModel>(context, listen: false)
          .paymentMethods
          ?.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            S.of(context).paymentSettings,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Consumer<WalletRequestModel>(builder: (context, model, _) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                children: [
                  DropdownButtonFormField<WalletPaymentMethod>(
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
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
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
                    ),
                  ),
                  if (_selected != null)
                    DynamicSettingFields(
                      key: Key(_selected!.id),
                      paymentMethod: _selected!,
                    ),
                ],
              ),
            ),
          );
        }));
  }
}

class DynamicSettingFields extends StatefulWidget {
  const DynamicSettingFields({
    super.key,
    required this.paymentMethod,
  });
  final WalletPaymentMethod paymentMethod;

  @override
  State<DynamicSettingFields> createState() => _DynamicSettingFieldsState();
}

class _DynamicSettingFieldsState extends State<DynamicSettingFields> {
  late final Map<String, TextEditingController> _controllers = {
    for (var item in widget.paymentMethod.formFields ?? [])
      item.name: TextEditingController()
  };

  bool _isLoading = true;

  bool _isSaving = false;
  String? _errMsg;

  final Map<String, dynamic> _customFieldValues = {};

  void _submitSettings() {
    setState(() {
      _isSaving = true;
      _errMsg = null;
    });
    final walletRequestModel =
        Provider.of<WalletRequestModel>(context, listen: false);
    walletRequestModel
        .savePaymentSettings(widget.paymentMethod, _customFieldValues)
        .then((value) {
      setState(() {
        _isSaving = false;
      });
      var snackBar = SnackBar(
        content: Text(S.current.paymentDetailsChangedSuccessfully),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }).catchError((e) {
      setState(() {
        _isSaving = false;
        _errMsg = e.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final walletRequestModel =
          Provider.of<WalletRequestModel>(context, listen: false);
      walletRequestModel
          .getPaymentSettings(method: widget.paymentMethod)
          .then((value) {
        setState(() {
          _isLoading = false;
        });
        value?.forEach((e) {
          if (_controllers[e.name] != null) {
            _controllers[e.name]!.text = e.value.toString();
            _customFieldValues[e.name] = e.value;
          }
        });
      }).catchError((e) {
        setState(() {
          _isLoading = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: kLoadingWidget(context),
          )
        : Column(
            children: [
              ...?widget.paymentMethod.formFields?.map((item) {
                if (item.type == 'text' || item.type == 'email') {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: CustomTextField(
                      key: Key(item.label.toString()),
                      controller: _controllers[item.name],
                      autofillHints: const [AutofillHints.givenName],
                      onChanged: (value) {
                        _customFieldValues[item.name] = value;
                      },
                      onCancel: () {
                        _customFieldValues[item.name] = '';
                      },
                      textCapitalization: TextCapitalization.words,
                      showCancelIcon: true,
                      decoration: InputDecoration(
                        labelText: item.label,
                      ),
                    ),
                  );
                }
                return const SizedBox();
              }),
              if (_errMsg?.isNotEmpty ?? false)
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      _errMsg!,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium
                          ?.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: GestureDetector(
                  onTap: () {
                    _submitSettings();
                  },
                  child: Container(
                    width: double.infinity,
                    height: 44,
                    alignment: FractionalOffset.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(22.0)),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: !_isSaving
                        ? Text(
                            S.of(context).save,
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
              )
            ],
          );
  }
}
