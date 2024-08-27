import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools.dart';
import '../../../common/tools/flash.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart'
    show AppModel, CartModel, PointModel, User, UserModel;
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../modules/vendor_on_boarding/screen_index.dart';
import '../../../routes/flux_navigate.dart';
import '../../../services/service_config.dart';
import '../../../services/services.dart';
import '../../../widgets/common/custom_text_field.dart';
import '../../../widgets/common/flux_image.dart';
import '../../home/privacy_term_screen.dart';
import 'registration_screen_web.dart';

enum RegisterType { customer, vendor }

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (Layout.isDisplayDesktop(context)) {
      return const RegistrationScreenWeb();
    }
    return const RegistrationScreenMobile();
  }
}

class RegistrationScreenMobile extends StatefulWidget {
  const RegistrationScreenMobile();

  @override
  State<RegistrationScreenMobile> createState() =>
      _RegistrationScreenMobileState();
}

class _RegistrationScreenMobileState extends State<RegistrationScreenMobile> {
  // final _auth = firebase_auth.FirebaseAuth.instance;
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final TextEditingController _emailController = TextEditingController();

  String? firstName, lastName, emailAddress, username, phoneNumber, password;
  RegisterType? _registerType = RegisterType.customer;
  bool isChecked = true;

  final bool showPhoneNumberWhenRegister =
      kLoginSetting.showPhoneNumberWhenRegister;
  final bool requirePhoneNumberWhenRegister =
      kLoginSetting.requirePhoneNumberWhenRegister;
  final bool requireUsernameWhenRegister =
      kLoginSetting.requireUsernameWhenRegister;
  bool isPlatformSupported = ![
    ConfigType.bigCommerce,
    ConfigType.notion,
    ConfigType.shopify,
    ConfigType.presta,
    ConfigType.opencart,
    ConfigType.magento,
  ].contains(ServerConfig().type);

  final firstNameNode = FocusNode();
  final lastNameNode = FocusNode();
  final phoneNumberNode = FocusNode();
  final emailNode = FocusNode();
  final passwordNode = FocusNode();
  final usernameNode = FocusNode();

  Future<bool> _showDialogUnderApproval() {
    return context.showFluxDialogText(
      title: S.of(context).accountApprovalTitle,
      body: S.of(context).accountIsPendingApproval,
      primaryAction: S.of(context).ok,
    );
  }

  void _welcomeDiaLog(User user) {
    Provider.of<CartModel>(context, listen: false).setUser(user);
    Provider.of<PointModel>(context, listen: false).getMyPoint(user.cookie);
    final model = Provider.of<UserModel>(context, listen: false);

    /// Show VendorOnBoarding.
    if (kVendorConfig.vendorRegister &&
        Provider.of<AppModel>(context, listen: false).isMultivendor &&
        user.isVender) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (ctx) => VendorOnBoarding(
            user: user,
            onFinish: () {
              model.getUser();
              var email = user.email;
              _showMessage(
                '${S.of(ctx).welcome} $email!',
                isError: false,
              );
              var routeFound = false;
              var routeNames = [RouteList.dashboard, RouteList.productDetail];
              Navigator.popUntil(ctx, (route) {
                if (routeNames.any((element) =>
                    route.settings.name?.contains(element) ?? false)) {
                  routeFound = true;
                }
                return routeFound || route.isFirst;
              });

              if (!routeFound) {
                Navigator.of(ctx).pushReplacementNamed(RouteList.dashboard);
              }
            },
          ),
        ),
      );
      return;
    }

    var email = user.email;
    _showMessage(
      '${S.of(context).welcome} $email!',
      isError: false,
    );
    if (Services().widget.isRequiredLogin) {
      Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
      return;
    }
    var routeFound = false;
    var routeNames = [RouteList.dashboard, RouteList.productDetail];
    Navigator.popUntil(context, (route) {
      if (routeNames
          .any((element) => route.settings.name?.contains(element) ?? false)) {
        routeFound = true;
      }
      return routeFound || route.isFirst;
    });

    if (!routeFound) {
      Navigator.of(context).pushReplacementNamed(RouteList.dashboard);
    }
  }

  Future<void> _onRegisterSuccess(User user) async {
    if (!user.isVender && _registerType == RegisterType.vendor) {
      await _showDialogUnderApproval();
    }
    _welcomeDiaLog(user);
  }

  @override
  void dispose() {
    _emailController.dispose();
    firstNameNode.dispose();
    lastNameNode.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    phoneNumberNode.dispose();
    usernameNode.dispose();
    super.dispose();
  }

  void _showMessage(
    String text, {
    bool isError = true,
  }) {
    if (!mounted) {
      return;
    }
    FlashHelper.message(
      context,
      message: text,
      isError: isError,
    );
  }

  Future<void> _submitRegister({
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? emailAddress,
    String? username,
    String? password,
    bool? isVendor,
  }) async {
    final invalidFirstName = firstName?.trim().isEmpty ?? true;
    final invalidLastName = lastName?.trim().isEmpty ?? true;
    final invalidUsername = (requireUsernameWhenRegister &&
        (username?.trim().isEmpty ?? true && isPlatformSupported));
    final invalidEmail = emailAddress?.trim().isEmpty ?? true;
    final invalidPassword = password?.isEmpty ?? true;
    final invalidPhoneNumber = (showPhoneNumberWhenRegister &&
        requirePhoneNumberWhenRegister &&
        (phoneNumber?.trim().isEmpty ?? true));

    if (invalidFirstName ||
        invalidLastName ||
        invalidUsername ||
        invalidEmail ||
        invalidPassword ||
        invalidPhoneNumber) {
      _showMessage(S.of(context).pleaseInputFillAllFields);
    } else if (isChecked == false) {
      _showMessage(S.of(context).pleaseAgreeTerms);
    } else {
      if (!emailAddress.validateEmail()) {
        _showMessage(S.of(context).errorEmailFormat);
        return;
      }

      if (password == null || password.length < 8) {
        _showMessage(S.of(context).errorPasswordFormat);
        return;
      }

      await Provider.of<UserModel>(context, listen: false).createUser(
        username: username,
        email: emailAddress,
        password: password,
        firstName: firstName,
        lastName: lastName,
        phoneNumber: phoneNumber,
        success: _onRegisterSuccess,
        fail: _showMessage,
        isVendor: isVendor,
      );
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
            child: ListenableProvider.value(
              value: Provider.of<UserModel>(context),
              child: Consumer<UserModel>(
                builder: (context, value, child) {
                  return SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: AutofillGroup(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            const SizedBox(height: 10.0),
                            Center(
                              child: FractionallySizedBox(
                                widthFactor: 0.8,
                                child: FluxImage(
                                  useExtendedImage: false,
                                  imageUrl: themeConfig.logo,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                            CustomTextField(
                              key: const Key('registerFirstNameField'),
                              autofillHints: const [AutofillHints.givenName],
                              onChanged: (value) => firstName = value,
                              textCapitalization: TextCapitalization.words,
                              nextNode: lastNameNode,
                              showCancelIcon: true,
                              decoration: InputDecoration(
                                labelText: S.of(context).firstName,
                                hintText: S.of(context).enterYourFirstName,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            CustomTextField(
                              key: const Key('registerLastNameField'),
                              autofillHints: const [AutofillHints.familyName],
                              focusNode: lastNameNode,
                              nextNode: showPhoneNumberWhenRegister
                                  ? phoneNumberNode
                                  : requireUsernameWhenRegister
                                      ? usernameNode
                                      : emailNode,
                              showCancelIcon: true,
                              textCapitalization: TextCapitalization.words,
                              onChanged: (value) => lastName = value,
                              decoration: InputDecoration(
                                labelText: S.of(context).lastName,
                                hintText: S.of(context).enterYourLastName,
                              ),
                            ),
                            if (showPhoneNumberWhenRegister) ...[
                              const SizedBox(height: 20.0),
                              CustomTextField(
                                key: const Key('registerPhoneField'),
                                focusNode: phoneNumberNode,
                                autofillHints: const [
                                  AutofillHints.telephoneNumber
                                ],
                                nextNode: requireUsernameWhenRegister
                                    ? usernameNode
                                    : emailNode,
                                showCancelIcon: true,
                                onChanged: (value) => phoneNumber = value,
                                decoration: InputDecoration(
                                  labelText: S.of(context).phone,
                                  hintText: S.of(context).enterYourPhoneNumber,
                                ),
                                keyboardType: TextInputType.phone,
                              ),
                            ],
                            if (requireUsernameWhenRegister &&
                                isPlatformSupported) ...[
                              const SizedBox(height: 20.0),
                              CustomTextField(
                                key: const Key('registerUsernameField'),
                                focusNode: usernameNode,
                                autofillHints: const [AutofillHints.username],
                                nextNode: emailNode,
                                onChanged: (value) => username = value,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: S.of(context).username,
                                  hintText: S.of(context).enterYourUsername,
                                ),
                              ),
                            ],
                            const SizedBox(height: 20.0),
                            CustomTextField(
                              key: const Key('registerEmailField'),
                              focusNode: emailNode,
                              autofillHints: const [AutofillHints.email],
                              nextNode: passwordNode,
                              controller: _emailController,
                              onChanged: (value) => emailAddress = value,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: S.of(context).email,
                                hintText: S.of(context).enterYourEmail,
                              ),
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
                                labelText: S.of(context).password,
                                hintText: S.of(context).enterYourPassword,
                              ),
                            ),
                            const SizedBox(height: 20.0),
                            if (kVendorConfig.vendorRegister &&
                                (appModel.isMultivendor ||
                                    ServerConfig().isListeoType))
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${S.of(context).registerAs}:',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    Row(
                                      children: [
                                        Radio<RegisterType>(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          value: RegisterType.customer,
                                          groupValue: _registerType,
                                          onChanged: (RegisterType? value) {
                                            setState(() {
                                              _registerType = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          S.of(context).customer,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Radio<RegisterType>(
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          value: RegisterType.vendor,
                                          groupValue: _registerType,
                                          onChanged: (RegisterType? value) {
                                            setState(() {
                                              _registerType = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          S.of(context).vendor,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            RichText(
                              maxLines: 2,
                              text: TextSpan(
                                text: S.of(context).bySignup,
                                style: Theme.of(context).textTheme.bodyLarge,
                                children: <TextSpan>[
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
                            const SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 16.0),
                              child: Material(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0)),
                                elevation: 0,
                                child: MaterialButton(
                                  key: const Key('registerSubmitButton'),
                                  onPressed: value.loading == true
                                      ? null
                                      : () async {
                                          await _submitRegister(
                                            firstName: firstName,
                                            lastName: lastName,
                                            phoneNumber: phoneNumber,
                                            username: username,
                                            emailAddress: emailAddress,
                                            password: password,
                                            isVendor: _registerType ==
                                                RegisterType.vendor,
                                          );
                                        },
                                  minWidth: 200.0,
                                  elevation: 0.0,
                                  height: 42.0,
                                  child: Text(
                                    value.loading == true
                                        ? S.of(context).loading
                                        : S.of(context).createAnAccount,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    '${S.of(context).or} ',
                                  ),
                                  InkWell(
                                    onTap: () {
                                      final canPop =
                                          ModalRoute.of(context)!.canPop;
                                      if (canPop) {
                                        Navigator.pop(context);
                                      } else {
                                        Navigator.of(context)
                                            .pushReplacementNamed(
                                                RouteList.login);
                                      }
                                    },
                                    child: Text(
                                      S.of(context).loginToYourAccount,
                                      style: TextStyle(
                                        color: Theme.of(context).primaryColor,
                                        decoration: TextDecoration.underline,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
