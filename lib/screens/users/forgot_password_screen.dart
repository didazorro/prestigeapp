import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/app_model.dart';
import '../../modules/dynamic_layout/helper/helper.dart';
import '../../services/index.dart';
import '../../widgets/common/flux_image.dart';

const _placeHolderImage = 'https://cln.sh/N9pLx512+';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordScreen> {
  final TextEditingController forgotPasswordController =
      TextEditingController();

  bool isSubmitting = false;

  void onSubmitPassword(BuildContext context) async {
    var currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
    var userName = forgotPasswordController.text;
    if (userName.isEmpty) {
      final snackBar = SnackBar(
        content: Text(S.of(context).emptyUsername),
        duration: const Duration(seconds: 3),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }
    setState(() {
      isSubmitting = true;
    });

    try {
      await Services().widget.resetPassword(context, userName);
      setState(() {
        isSubmitting = false;
      });
    } catch (e) {
      setState(() {
        isSubmitting = false;
      });
      final snackBar = SnackBar(
        content: Text(e.toString()),
        duration: const Duration(seconds: 3),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  void dispose() {
    forgotPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final isDesktop = Layout.isDisplayDesktop(context);
    final appModel = Provider.of<AppModel>(context, listen: false);
    final themeConfig = appModel.themeConfig;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: isDesktop
          ? null
          : AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.of(context).pop(),
              ),
              backgroundColor: Theme.of(context).colorScheme.surface,
            ),
      body: LayoutLimitWidthScreen(
        child: Builder(
          builder: (context) => Container(
            height: isDesktop ? (screenSize.width * 0.6) : null,
            constraints: const BoxConstraints(maxHeight: 800, minHeight: 650),
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: isDesktop
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.center,
                      children: [
                        if (isDesktop)
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
                          child: Container(
                            alignment: Alignment.center,
                            width: screenSize.width /
                                (2 / (screenSize.height / screenSize.width)),
                            child: SingleChildScrollView(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    S.of(context).resetYourPassword,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  const SizedBox(
                                    height: 40.0,
                                  ),
                                  const Icon(
                                    Icons.vpn_key,
                                    color: Colors.orangeAccent,
                                    size: 70.0,
                                  ),
                                  const SizedBox(
                                    height: 20.0,
                                  ),
                                  TextField(
                                    autocorrect: false,
                                    controller: forgotPasswordController,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: S.of(context).yourUsernameEmail,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 30.0,
                                  ),
                                  InkWell(
                                    onTap: () => isSubmitting
                                        ? null
                                        : onSubmitPassword(context),
                                    child: FittedBox(
                                      child: Container(
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25.0)),
                                        ),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Center(
                                          child: Text(
                                            isSubmitting
                                                ? S.of(context).loading
                                                : S.of(context).getPasswordLink,
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: 0.3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 50.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (isDesktop) ...[
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
