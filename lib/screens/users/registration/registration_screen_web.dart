import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/common/custom_text_field.dart';
import '../../../widgets/common/flux_image.dart';
import '../../base_screen.dart';
import '../../settings/layouts/mixins/setting_action_mixin.dart';
import 'mixins/registration_mixin.dart';

const _placeHolderImage = 'https://cln.sh/N9pLx512+';

class RegistrationScreenWeb extends StatefulWidget {
  const RegistrationScreenWeb();

  @override
  BaseScreen<RegistrationScreenWeb> createState() =>
      _RegistrationScreenWebState();
}

class _RegistrationScreenWebState extends BaseScreen<RegistrationScreenWeb>
    with TickerProviderStateMixin, RegistrationMixin, SettingActionMixin {
  String? firstName, lastName, emailAddress, phoneNumber, password;

  void _onTapLogin() {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }

    submitRegister(
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
      password: password,
    );
    // runLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    // final appModel = Provider.of<AppModel>(context);
    // final themeConfig = appModel.themeConfig;
    final screenSize = MediaQuery.sizeOf(context);
    final appModel = Provider.of<AppModel>(context, listen: false);
    final themeConfig = appModel.themeConfig;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Selector<UserModel, bool>(
        selector: (context, provider) => provider.loading,
        builder: (_, isLoading, child) => LayoutLimitWidthScreen(
          child: Container(
            height: screenSize.width * 0.6,
            constraints: const BoxConstraints(maxHeight: 800, minHeight: 650),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(RouteList.home);
                        },
                        behavior: HitTestBehavior.translucent,
                        child: SizedBox(
                          height: 40,
                          child: FluxImage(
                            imageUrl: themeConfig.logo,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 48.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                S.of(context).createAnAccount,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              const SizedBox(height: 16),
                              Text(
                                S.of(context).welcomeRegister,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 32),
                              AutofillGroup(
                                child: IgnorePointer(
                                  ignoring: false,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(S.of(context).firstName),
                                                const SizedBox(height: 8),
                                                CustomTextField(
                                                  // controller: usernameCtrl,
                                                  // readOnly: isLoading,
                                                  onChanged: (value) {
                                                    firstName = value;
                                                  },
                                                  autofillHints: const [
                                                    AutofillHints.nameSuffix
                                                  ],
                                                  showCancelIcon: true,
                                                  autocorrect: false,
                                                  enableSuggestions: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  keyboardType:
                                                      TextInputType.name,
                                                  decoration: InputDecoration(
                                                    border:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8)),
                                                    ),
                                                    isDense: true,
                                                    hintText: S
                                                        .of(context)
                                                        .enterYourFirstName,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(S.of(context).lastName),
                                                const SizedBox(height: 8),
                                                CustomTextField(
                                                  onChanged: (value) {
                                                    lastName = value;
                                                  },
                                                  readOnly: isLoading,
                                                  autofillHints: const [
                                                    AutofillHints.namePrefix
                                                  ],
                                                  showCancelIcon: true,
                                                  autocorrect: false,
                                                  enableSuggestions: false,
                                                  textInputAction:
                                                      TextInputAction.next,
                                                  keyboardType:
                                                      TextInputType.name,
                                                  decoration: InputDecoration(
                                                    border:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  8)),
                                                    ),
                                                    isDense: true,
                                                    hintText: S
                                                        .of(context)
                                                        .enterYourLastName,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Text(S.of(context).email),
                                      const SizedBox(height: 8),
                                      CustomTextField(
                                        onChanged: (value) {
                                          emailAddress = value;
                                        },
                                        readOnly: isLoading,
                                        autofillHints: const [
                                          AutofillHints.email
                                        ],
                                        showCancelIcon: true,
                                        autocorrect: false,
                                        enableSuggestions: false,
                                        textInputAction: TextInputAction.next,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          isDense: true,
                                          hintText: S
                                              .of(context)
                                              .enterYourEmailOrUsername,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Text(S.of(context).password),
                                      const SizedBox(height: 8),
                                      CustomTextField(
                                        autofillHints: const [
                                          AutofillHints.password
                                        ],
                                        readOnly: isLoading,
                                        onChanged: (value) {
                                          password = value;
                                        },
                                        obscureText: true,
                                        showEyeIcon: true,
                                        textInputAction: TextInputAction.done,
                                        onSubmitted: (_) => _onTapLogin(),
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                          isDense: true,
                                          hintText:
                                              S.of(context).enterYourPassword,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      RichText(
                                        maxLines: 2,
                                        text: TextSpan(
                                          text: S.of(context).bySignup,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text: S
                                                  .of(context)
                                                  .agreeWithPrivacy,
                                              style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  decoration:
                                                      TextDecoration.underline),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () =>
                                                    onTapOpenPrivacy(context),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 32),
                                      SizedBox(
                                        height: 40,
                                        child: ElevatedButton(
                                          onPressed:
                                              isLoading ? null : _onTapLogin,
                                          child: isLoading
                                              ? JumpingDots(
                                                  animationDuration:
                                                      const Duration(
                                                          milliseconds: 150),
                                                  innerPadding: 3,
                                                  radius: 6,
                                                  verticalOffset: 12,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                )
                                              : Text(S
                                                  .of(context)
                                                  .createAnAccount),
                                        ),
                                      ),
                                      const SizedBox(height: 30.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const Text(
                                              'Already have an account?'),
                                          GestureDetector(
                                            onTap: () {
                                              final canPop =
                                                  ModalRoute.of(context)!
                                                      .canPop;
                                              if (canPop) {
                                                Navigator.pop(context);
                                              } else {
                                                Navigator.of(context)
                                                    .pushReplacementNamed(
                                                        RouteList.login);
                                              }
                                            },
                                            child: Text(
                                              ' ${S.of(context).signIn}',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      // const SizedBox(height: 30.0),
                                    ],
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
                const SizedBox(width: 24),
                const Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    child: FluxImage(
                      imageUrl: _placeHolderImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
