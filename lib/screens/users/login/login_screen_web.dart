import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../common/constants.dart';
import '../../../common/tools.dart';
import '../../../common/tools/biometrics_tools.dart';
import '../../../data/boxes.dart';
import '../../../generated/l10n.dart';
import '../../../models/app_model.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../services/index.dart';
import '../../../widgets/common/custom_text_field.dart';
import '../../../widgets/common/flux_image.dart';
import '../../base_screen.dart';
import 'mixins/mixin_animation_button_login.dart';
import 'mixins/mixin_login.dart';

const _placeHolderImage = 'https://cln.sh/N9pLx512+';

class LoginScreenWeb extends StatefulWidget {
  const LoginScreenWeb();

  @override
  BaseScreen<LoginScreenWeb> createState() => _LoginPageState();
}

class _LoginPageState extends BaseScreen<LoginScreenWeb>
    with TickerProviderStateMixin, AnimationButtonLoginMixin, LoginMixin {
  late BuildContext _parentContext;

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  Future _biometricsLogin(BuildContext context) async {
    var didAuth = await BiometricsTools.instance.localAuth(context);
    if (didAuth) {
      usernameCtrl.text = BiometricsBox().username ?? '';
      passwordCtrl.text = BiometricsBox().password ?? '';
      _onTapLogin();
    }
  }

  void _onTapLogin() {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }

    runLogin(context);
  }

  @override
  TextEditingController passwordCtrl = TextEditingController();

  @override
  TextEditingController usernameCtrl = TextEditingController();

  @override
  Future<void> beforeCallLogin() => playAnimation();

  @override
  Future<void> afterCallLogin(bool isLoginSuccess) => stopAnimation();

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _parentContext = context;
    // final appModel = Provider.of<AppModel>(context);
    // final themeConfig = appModel.themeConfig;
    final screenSize = MediaQuery.sizeOf(context);
    final appModel = Provider.of<AppModel>(context, listen: false);

    final forgetPasswordUrl =
        appModel.appConfig?.forgetPassword ?? ServerConfig().forgetPassword;
    final themeConfig = appModel.themeConfig;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: LayoutLimitWidthScreen(
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
                              S.of(context).welcomeBack,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              S.of(context).loginToContinue,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            const SizedBox(height: 32),
                            AutofillGroup(
                              child: IgnorePointer(
                                ignoring: isLoading,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: <Widget>[
                                    Text(S.of(context).email),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      key: const Key('loginEmailField'),
                                      controller: usernameCtrl,
                                      readOnly: isLoading,
                                      autofillHints: const [
                                        AutofillHints.email
                                      ],
                                      showCancelIcon: true,
                                      autocorrect: false,
                                      enableSuggestions: false,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        isDense: true,
                                        hintText: S
                                            .of(_parentContext)
                                            .enterYourEmailOrUsername,
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Text(S.of(context).password),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      key: const Key('loginPasswordField'),
                                      autofillHints: const [
                                        AutofillHints.password
                                      ],
                                      readOnly: isLoading,
                                      obscureText: true,
                                      showEyeIcon: true,
                                      textInputAction: TextInputAction.done,
                                      controller: passwordCtrl,
                                      focusNode: _passwordFocusNode,
                                      onSubmitted: (_) => _onTapLogin(),
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                        ),
                                        isDense: true,
                                        hintText: S
                                            .of(_parentContext)
                                            .enterYourPassword,
                                      ),
                                    ),
                                    if (kLoginSetting.isResetPasswordSupported)
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 12.0,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              launchForgetPasswordURL(
                                                  forgetPasswordUrl);
                                            },
                                            behavior: HitTestBehavior.opaque,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: Text(
                                                S.of(context).resetPassword,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    if (!kLoginSetting.isResetPasswordSupported)
                                      const SizedBox(height: 50.0),
                                    SizedBox(
                                      height: 40,
                                      child: ElevatedButton(
                                        key: const Key('loginSubmitButton'),
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
                                            : Text(S.of(context).signIn),
                                      ),
                                    ),
                                    if (BiometricsTools
                                        .instance.isLoginSupported)
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: IconButton(
                                          iconSize: 50,
                                          onPressed: () =>
                                              _biometricsLogin(context),
                                          icon: const Icon(
                                              Icons.fingerprint_outlined),
                                        ),
                                      ),
                                    const SizedBox(height: 30.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(S.of(context).dontHaveAccount),
                                        GestureDetector(
                                          onTap: () {
                                            NavigateTools.navigateRegister(
                                                context);
                                          },
                                          child: Text(
                                            ' ${S.of(context).signup}',
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
    );
  }
}
