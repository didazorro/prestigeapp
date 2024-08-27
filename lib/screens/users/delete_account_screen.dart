import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inspireui/inspireui.dart';

import '../../common/extensions/extensions.dart';
import '../../generated/l10n.dart';
import '../../services/services.dart';
import '../../widgets/common/loading_body.dart';

class DeleteAccountArguments {
  final String confirmCaptcha;
  final String userToken;

  DeleteAccountArguments({
    required this.confirmCaptcha,
    required this.userToken,
  });
}

class DeleteAccountScreen extends StatefulWidget {
  const DeleteAccountScreen({
    super.key,
    required this.confirmCaptcha,
    required this.userToken,
  });

  final String confirmCaptcha;
  final String userToken;

  @override
  State<DeleteAccountScreen> createState() => _DeleteAccountScreenState();
}

class _DeleteAccountScreenState extends State<DeleteAccountScreen> {
  final ValueNotifier<bool> _enableDeleteButtonNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _loadingNotifier = ValueNotifier(false);

  void _showDialogError(String message) async {
    await context.showFluxDialogText(
      title: S.of(context).notice,
      body: message,
      primaryAction: S.of(context).ok,
    );
    return;
  }

  Future<void> _showDialogDeleteAccountSuccess() async {
    final confirmed = await context.showFluxDialogText(
      title: S.of(context).deleteAccount,
      body: S.of(context).deleteAccountSuccess,
      primaryAction: S.of(context).ok,
    );
    if (confirmed) {
      Navigator.of(context).pop(true);
    }
    return;
  }

  Future<void> _onTapDelete() async {
    try {
      _loadingNotifier.value = true;
      final success = await Services().api.deleteAccount(widget.userToken);
      if (!success) throw S.of(context).somethingWrong;
      _loadingNotifier.value = false;
      await _showDialogDeleteAccountSuccess();
    } catch (e) {
      _loadingNotifier.value = false;
      _showDialogError(e.toString());
    }
  }

  void _checkValidCaptcha(String captcha) {
    if (captcha == widget.confirmCaptcha) {
      _enableDeleteButtonNotifier.value = true;
    } else {
      _enableDeleteButtonNotifier.value = false;
    }
  }

  @override
  void dispose() {
    _enableDeleteButtonNotifier.dispose();
    _loadingNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(
          S.of(context).deleteAccount,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: ValueListenableBuilder<bool>(
        valueListenable: _loadingNotifier,
        builder: (context, isLoading, child) {
          return LoadingBody(
            isLoading: isLoading,
            child: AutoHideKeyboard(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: DefaultTextStyle(
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 18),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(S.of(context).deleteAccountMsg),
                              const SizedBox(height: 16),
                              Text(
                                S.of(context).account,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 4),
                              Text(S.of(context).accountDeleteDescription),
                              const SizedBox(height: 16),
                              Text(
                                S.of(context).emailSubscription,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 4),
                              Text(S.of(context).emailDeleteDescription),
                              const SizedBox(height: 16),
                              Text(
                                S.of(context).confirmAccountDeletion,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 8),
                              Text(S
                                  .of(context)
                                  .enterCaptcha(widget.confirmCaptcha)),
                              const SizedBox(height: 8),
                              TextField(
                                autocorrect: false,
                                onChanged: _checkValidCaptcha,
                                inputFormatters: [
                                  _UpperCaseTextFormatter(),
                                ],
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SafeArea(
                      top: false,
                      minimum: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ValueListenableBuilder<bool>(
                        valueListenable: _enableDeleteButtonNotifier,
                        builder: (context, enable, child) {
                          return ElevatedButton(
                            onPressed: enable ? _onTapDelete : null,
                            child: Text(
                              S.of(context).delete.toUpperCase(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
