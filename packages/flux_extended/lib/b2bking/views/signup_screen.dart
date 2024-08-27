import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/common/tools/navigate_tools.dart';
import 'package:fstore/common/tools/tools.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/app_model.dart';
import 'package:fstore/routes/flux_navigate.dart';
import 'package:fstore/screens/home/privacy_term_screen.dart';
import 'package:fstore/widgets/common/custom_text_field.dart';
import 'package:fstore/widgets/common/flux_image.dart';
import 'package:provider/provider.dart';

import '../models/field.dart';
import '../models/role.dart';
import '../services/index.dart';

class B2BKingSignUpScreen extends StatefulWidget {
  const B2BKingSignUpScreen();

  @override
  State<B2BKingSignUpScreen> createState() => _B2BKingSignUpScreenState();
}

class _B2BKingSignUpScreenState extends State<B2BKingSignUpScreen> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final _services = B2BKingServices();

  List<B2BKingRole>? _roles;
  String? _selectedRole;

  List<B2BKingField>? _customFields;

  final Map<int, dynamic> _customFieldValues = {};

  String? email, password;
  bool isChecked = false;
  bool isLoading = false;

  bool _isIniting = true;
  bool _validating = false;

  final emailNode = FocusNode();
  final passwordNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      try {
        _roles = await _services.getRoles(context);
        setState(() {
          if (_roles?.isNotEmpty ?? false) {
            _selectedRole = _roles?.first.role;
          }
          _isIniting = false;
        });
        _customFields = await _services.getRegisterFields();
        setState(() {});
      } catch (e) {
        setState(() {
          _isIniting = false;
        });
        _snackBar(e.toString());
      }
    });
  }

  @override
  void dispose() {
    emailNode.dispose();
    passwordNode.dispose();
    super.dispose();
  }

  void _snackBar(String text) {
    if (mounted) {
      final snackBar = SnackBar(
        content: Text(text),
        duration: const Duration(seconds: 10),
        action: SnackBarAction(
          label: S.of(context).close,
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );

      _scaffoldMessengerKey.currentState?.showSnackBar(snackBar);
    }
  }

  Future<void> _showSuccessDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).registerSuccess),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(S.of(context).wholesaleRegisterMsg),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(S.of(context).ok),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _submitRegister() async {
    setState(() {
      _validating = true;
    });
    if (email == null || password == null) {
      _snackBar(S.of(context).pleaseInputFillAllFields);
    } else if (isChecked == false) {
      _snackBar(S.of(context).pleaseAgreeTerms);
    } else {
      if (!email.validateEmail()) {
        _snackBar(S.of(context).errorEmailFormat);
        return;
      }

      if (password!.length < 8) {
        _snackBar(S.of(context).errorPasswordFormat);
        return;
      }

      try {
        setState(() {
          isLoading = true;
        });
        await _services.signUp(
          email: email ?? '',
          password: password ?? '',
          role: _selectedRole ?? '',
          customFields: _customFieldValues.keys
              .map((e) => ({'id': e, 'value': _customFieldValues[e]}))
              .toList(),
        );

        var role = (_roles ?? []).firstWhere((e) => e.role == _selectedRole);
        if (role.approvalRequired == true) {
          await _showSuccessDialog();
        }
        setState(() {
          isLoading = false;
        });
        NavigateTools.goBackLogin(context);
      } catch (e) {
        setState(() {
          isLoading = false;
        });
        _snackBar(e.toString());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context, listen: true);
    final themeConfig = appModel.themeConfig;

    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0.0,
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => Tools.hideKeyboard(context),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: AutofillGroup(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const SizedBox(height: 10.0),
                      Center(
                        child: FluxImage(
                          imageUrl: themeConfig.logo,
                          width: MediaQuery.of(context).size.width / 2,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      CustomTextField(
                        key: const Key('registerEmailField'),
                        focusNode: emailNode,
                        autofillHints: const [AutofillHints.email],
                        nextNode: passwordNode,
                        onChanged: (value) => email = value,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            labelText: S.of(context).enterYourEmail),
                        hintText: S.of(context).enterYourEmail,
                      ),
                      const SizedBox(height: 20.0),
                      CustomTextField(
                        key: const Key('registerPasswordField'),
                        focusNode: passwordNode,
                        autofillHints: const [AutofillHints.password],
                        showEyeIcon: true,
                        obscureText: true,
                        onChanged: (value) => password = value,
                        decoration: InputDecoration(
                          labelText: S.of(context).enterYourPassword,
                          hintText: S.of(context).enterYourPassword,
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      if (_isIniting) kLoadingWidget(context),
                      if ((_roles ?? []).isNotEmpty)
                        Text(S.of(context).selectRole,
                            style: Theme.of(context).textTheme.titleLarge),
                      const SizedBox(height: 10),
                      if ((_roles ?? []).isNotEmpty)
                        Row(
                          children: [
                            Expanded(
                              child: DropdownMenu<String>(
                                initialSelection: _selectedRole,
                                onSelected: (String? value) {
                                  setState(() {
                                    _selectedRole = value!;
                                  });
                                },
                                dropdownMenuEntries: (_roles ?? [])
                                    .map<DropdownMenuEntry<String>>(
                                        (B2BKingRole item) {
                                  return DropdownMenuEntry<String>(
                                      value: item.role ?? '',
                                      label: item.name ?? '');
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(height: 20.0),
                      ...?_customFields?.map((item) {
                        final enabled = item.role == 'allroles' ||
                            (item.role?.contains(_selectedRole ?? 'allroles') ??
                                false);
                        if ((item.type == 'text' || item.type == 'tel') &&
                            enabled) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: CustomTextField(
                              key: Key(item.id?.toString() ?? ''),
                              autofillHints: const [AutofillHints.givenName],
                              onChanged: (value) {
                                _customFieldValues[item.id ?? 0] = value;
                              },
                              textCapitalization: TextCapitalization.words,
                              showCancelIcon: true,
                              decoration: InputDecoration(
                                  labelText: item.label,
                                  hintText: item.placeholder,
                                  errorText: item.required == true &&
                                          (_customFieldValues[item.id ?? 0]
                                                  ?.toString()
                                                  .isEmpty ??
                                              true) &&
                                          _validating
                                      ? S
                                          .of(context)
                                          .theFieldIsRequired(item.label ?? '')
                                      : null),
                            ),
                          );
                        }
                        return const SizedBox();
                      }),
                      Row(
                        children: <Widget>[
                          Checkbox(
                            key: const Key('registerConfirmCheckbox'),
                            value: isChecked,
                            activeColor: Theme.of(context).primaryColor,
                            checkColor: Colors.white,
                            onChanged: (value) {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                          ),
                          InkWell(
                            onTap: () {
                              isChecked = !isChecked;
                              setState(() {});
                            },
                            child: Text(
                              S.of(context).iwantToCreateAccount,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          isChecked = !isChecked;
                          setState(() {});
                        },
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              value: isChecked,
                              activeColor: Theme.of(context).primaryColor,
                              checkColor: Colors.white,
                              onChanged: (value) {
                                isChecked = !isChecked;
                                setState(() {});
                              },
                            ),
                            Expanded(
                              child: RichText(
                                maxLines: 2,
                                text: TextSpan(
                                  text: S.of(context).iAgree,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                  children: <TextSpan>[
                                    const TextSpan(text: ' '),
                                    TextSpan(
                                      text: S.of(context).agreeWithPrivacy,
                                      style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          decoration: TextDecoration.underline),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => FluxNavigate.push(
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PrivacyTermScreen(
                                                  showAgreeButton: false,
                                                ),
                                              ),
                                              forceRootNavigator: true,
                                              context: context,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        child: Material(
                          color: Theme.of(context).primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          elevation: 0,
                          child: MaterialButton(
                            key: const Key('registerSubmitButton'),
                            onPressed: isLoading == true
                                ? null
                                : () async {
                                    await _submitRegister();
                                  },
                            minWidth: 200.0,
                            elevation: 0.0,
                            height: 42.0,
                            child: Text(
                              isLoading == true
                                  ? S.of(context).loading
                                  : S.of(context).createAnAccount,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
