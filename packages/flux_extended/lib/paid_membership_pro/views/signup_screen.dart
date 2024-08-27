import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fstore/common/config.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/common/tools.dart';
import 'package:fstore/generated/l10n.dart';
import 'package:fstore/models/index.dart' show AppModel, CreditCard;
import 'package:fstore/modules/native_payment/credit_card/index.dart';
import 'package:fstore/screens/home/privacy_term_screen.dart';
import 'package:fstore/widgets/common/custom_text_field.dart';
import 'package:fstore/widgets/common/flux_image.dart';
import 'package:provider/provider.dart';

import '../models/plan.dart';
import '../services/index.dart';

class MembershipSignUpScreen extends StatefulWidget {
  final Plan plan;

  const MembershipSignUpScreen({required this.plan});

  @override
  State<MembershipSignUpScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<MembershipSignUpScreen> {
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  final TextEditingController _emailController = TextEditingController();
  final PaidMembershipProServices _services = PaidMembershipProServices();

  Map<String, dynamic>? payments;
  String? selectedPayment;

  String? firstName,
      lastName,
      emailAddress,
      username,
      password,
      cardNumber,
      expiryDate,
      cvv,
      phoneNumber;

  bool isChecked = false;
  bool isLoading = false;

  final bool showPhoneNumberWhenRegister =
      kLoginSetting.showPhoneNumberWhenRegister;
  final bool requirePhoneNumberWhenRegister =
      kLoginSetting.requirePhoneNumberWhenRegister;
  final bool requireUsernameWhenRegister =
      kLoginSetting.requireUsernameWhenRegister;

  final firstNameNode = FocusNode();
  final lastNameNode = FocusNode();
  final usernameNode = FocusNode();
  final emailNode = FocusNode();
  final passwordNode = FocusNode();
  final phoneNumberNode = FocusNode();

  bool get isCardValid =>
      widget.plan.isFree == true ||
      (cvv!.isNotEmpty &&
          expiryDate!.isNotEmpty &&
          cardNumber!.isNotEmpty &&
          expiryDate!.contains('/'));

  @override
  void dispose() {
    _emailController.dispose();
    firstNameNode.dispose();
    lastNameNode.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    usernameNode.dispose();
    phoneNumberNode.dispose();
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

  Future<void> _submitRegister(
      {String? firstName,
      String? lastName,
      String? emailAddress,
      String? password,
      String? username,
      String? phoneNumber}) async {
    final invalidFirstName = firstName?.trim().isEmpty ?? true;
    final invalidLastName = lastName?.trim().isEmpty ?? true;
    final invalidUsername =
        (requireUsernameWhenRegister && (username?.trim().isEmpty ?? true));
    final invalidEmail = emailAddress?.trim().isEmpty ?? true;
    final invalidPassword = password?.isEmpty ?? true;
    final invalidPhoneNumber = (showPhoneNumberWhenRegister &&
        requirePhoneNumberWhenRegister &&
        (phoneNumber?.trim().isEmpty ?? true));
    final invalidCard = !isCardValid;

    if (invalidFirstName ||
        invalidLastName ||
        invalidUsername ||
        invalidEmail ||
        invalidPassword ||
        invalidPhoneNumber ||
        invalidCard) {
      _snackBar(S.of(context).pleaseInputFillAllFields);
      return;
    }
    if (isChecked == false) {
      _snackBar(S.of(context).pleaseAgreeTerms);
      return;
    }

    if (!(emailAddress?.validateEmail() ?? false)) {
      _snackBar(S.of(context).errorEmailFormat);
      return;
    }
    if (password == null || password.length < 8) {
      _snackBar(S.of(context).errorPasswordFormat);
      return;
    }
    try {
      setState(() {
        isLoading = true;
      });
      final invoice = await _services.signUp(
          username: username ?? emailAddress,
          email: emailAddress,
          firstName: firstName,
          lastName: lastName,
          password: password,
          phoneNumber: phoneNumber,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cvv: cvv,
          plan: widget.plan);
      setState(() {
        isLoading = false;
      });
      await Navigator.of(context).pushNamed(
          RouteList.paidMemberShipProConfirmation,
          arguments: invoice);
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      _snackBar(e.toString().clearExceptionKey());
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
                      const SizedBox(height: 20.0),
                      if (showPhoneNumberWhenRegister) ...[
                        CustomTextField(
                          key: const Key('registerPhoneField'),
                          autofillHints: const [AutofillHints.telephoneNumber],
                          focusNode: phoneNumberNode,
                          nextNode: requireUsernameWhenRegister
                              ? usernameNode
                              : emailNode,
                          showCancelIcon: true,
                          onChanged: (value) => phoneNumber = value,
                          decoration: InputDecoration(
                            labelText: S.of(context).phone,
                            hintText: S.of(context).enterYourPhoneNumber,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                      ],
                      if (requireUsernameWhenRegister) ...[
                        CustomTextField(
                          key: const Key('registerUsernameField'),
                          autofillHints: const [AutofillHints.familyName],
                          focusNode: usernameNode,
                          nextNode: emailNode,
                          showCancelIcon: true,
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (value) => username = value,
                          decoration: InputDecoration(
                              labelText: S.of(context).username,
                              hintText: S.of(context).enterYourUsername),
                        ),
                        const SizedBox(height: 20.0),
                      ],
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
                      if (widget.plan.isFree == false)
                        const SizedBox(height: 15.0),
                      if (widget.plan.isFree == false)
                        Text(
                          'Payment Information',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge!
                              .copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.w700,
                              ),
                        ),
                      if (widget.plan.isFree == false)
                        CreditCardForm(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          textColor:
                              Theme.of(context).textTheme.bodyMedium!.color,
                          themeColor: Theme.of(context).primaryColor,
                          onCreditCardModelChange: (CreditCard? model) {
                            setState(() {
                              cardNumber = model?.cardNumber;
                              expiryDate = model?.expiryDate;
                              cvv = model?.cvv;
                            });
                          },
                        ),
                      const SizedBox(height: 20.0),
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
                                        ..onTap = () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const PrivacyTermScreen(
                                                  showAgreeButton: false,
                                                ),
                                              ),
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
                                    await _submitRegister(
                                        firstName: firstName,
                                        lastName: lastName,
                                        emailAddress: emailAddress,
                                        password: password,
                                        username: username,
                                        phoneNumber: phoneNumber);
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
