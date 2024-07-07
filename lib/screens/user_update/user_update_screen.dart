import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:inspireui/widgets/auto_hide_keyboard.dart';
import 'package:provider/provider.dart';

import '../../common/tools/flash.dart';
import '../../generated/l10n.dart';
import '../../models/user_model.dart';
import '../../services/index.dart';
import '../../widgets/common/common_safe_area.dart';
import '../../widgets/common/flux_image.dart';
import '../../widgets/common/loading_body.dart';
import '../base_screen.dart';

class UserUpdateScreen extends StatefulWidget {
  @override
  BaseScreen<UserUpdateScreen> createState() => StateUserUpdate();
}

class StateUserUpdate extends BaseScreen<UserUpdateScreen> {
  TextEditingController? userEmail;
  TextEditingController? userPassword;
  TextEditingController? userDisplayName;
  late TextEditingController userNiceName;
  late TextEditingController userUrl;
  TextEditingController? currentPassword;

  TextEditingController? userFirstname;
  TextEditingController? userLastname;
  TextEditingController? userPhone;

  String? avatar;
  bool isLoading = false;
  final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  GlobalKey<ScaffoldMessengerState> get scaffoldMessengerKey =>
      _scaffoldMessengerKey;

  bool isValidPassword() => userPassword!.text.length >= 8;

  bool get hasChangePassword => isValidPassword();

  @override
  void afterFirstLayout(BuildContext context) {
    final user = Provider.of<UserModel>(context, listen: false).user;
    setState(() {
      userEmail = TextEditingController(text: user!.email);
      userPassword = TextEditingController(text: '');
      currentPassword = TextEditingController(text: '');
      userDisplayName = TextEditingController(text: user.name);
      userNiceName = TextEditingController(text: user.nicename);
      userFirstname = TextEditingController(text: user.firstName);
      userLastname = TextEditingController(text: user.lastName);
      userPhone = TextEditingController(text: user.phoneNumber);
      userUrl = TextEditingController(text: user.userUrl);
      avatar = user.picture;
    });
  }

  void updateUserInfo() {
    if (userPassword!.text.isNotEmpty && !isValidPassword()) {
      FlashHelper.errorMessage(
        context,
        message: S.of(context).errorPasswordFormat,
      );
      return;
    }

    final user = Provider.of<UserModel>(context, listen: false).user;
    setState(() {
      isLoading = true;
    });
    Services().widget.updateUserInfo(
          loggedInUser: user,
          onError: (e) {
            _scaffoldMessengerKey.currentState
                ?.showSnackBar(SnackBar(content: Text(e)));
            setState(() {
              isLoading = false;
            });
          },
          onSuccess: (user) {
            Provider.of<UserModel>(context, listen: false).updateUser(user);
            setState(() {
              isLoading = false;
            });

            _scaffoldMessengerKey.currentState?.showSnackBar(
              SnackBar(
                content: Text(S.of(context).updateSuccess),
              ),
            );

            /// If update password, need to pop true to force user log-out and
            /// login again to make effect
            Navigator.of(context).pop(hasChangePassword);
          },
          currentPassword: currentPassword!.text,
          userDisplayName: userDisplayName!.text,
          userEmail: userEmail!.text,
          userNiceName: userNiceName.text,
          userUrl: userUrl.text,
          userPassword: userPassword!.text,
          userFirstname: userFirstname?.text,
          userLastname: userLastname?.text,
          userPhone: userPhone?.text,
        );
  }

  @override
  void dispose() {
    userEmail?.dispose();
    userPassword?.dispose();
    userDisplayName?.dispose();
    userNiceName.dispose();
    userUrl.dispose();
    currentPassword?.dispose();
    userFirstname?.dispose();
    userLastname?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context).user;
    final isSocial = user?.isSocial ?? false;

    return ScaffoldMessenger(
      key: _scaffoldMessengerKey,
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        extendBodyBehindAppBar: true,
        body: AutoHideKeyboard(
          child: LoadingBody(
            isLoading: isLoading,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildAvatar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const SizedBox(height: 8),
                              buildEmail(isSocial),
                              const SizedBox(height: 16),
                              buildDisplayName(),
                              if (![
                                ConfigType.magento,
                                ConfigType.strapi,
                                ConfigType.wordpress,
                                ConfigType.presta
                              ].contains(ServerConfig().type)) ...[
                                const SizedBox(height: 16),
                                buildPhone(),
                              ],
                              const SizedBox(height: 16),
                              buildPassword(),
                              if (!isSocial) buildNewPassword(),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                buildButtonUpdate(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildAvatar() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.elliptical(100, 10),
                ),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 8)
                ]),
            child: (avatar?.isNotEmpty ?? false)
                ? ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.elliptical(100, 10),
                    ),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                        sigmaX: 5,
                        sigmaY: 5,
                      ),
                      child: FluxImage(
                        imageUrl: avatar!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : const SizedBox(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(150),
                color: Theme.of(context).primaryColorLight,
                border: Border.all(
                  color: Theme.of(context).colorScheme.surface,
                  width: 3,
                ),
              ),
              child: (avatar?.isNotEmpty ?? false)
                  ? Hero(
                      tag: 'user-avatar-$avatar',
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: FluxImage(
                          imageUrl: avatar!,
                          fit: BoxFit.cover,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    )
                  : const Icon(
                      Icons.person,
                      size: 120,
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildEmail(bool isSocial) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).email,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        TextField(
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          controller: userEmail,
          enabled: !isSocial,
        ),
      ],
    );
  }

  Widget buildPassword() {
    return Services().widget.renderCurrentPassInputforEditProfile(
          context: context,
          currentPasswordController: currentPassword,
        );
  }

  Widget buildNewPassword() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          S.of(context).newPassword,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Theme.of(context).primaryColorLight,
              width: 1.5,
            ),
          ),
          child: TextField(
            obscureText: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            controller: userPassword,
          ),
        ),
      ],
    );
  }

  Widget buildPhone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).phoneNumber,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Theme.of(context).primaryColorLight,
              width: 1.5,
            ),
          ),
          child: TextField(
            decoration: const InputDecoration(border: InputBorder.none),
            controller: userPhone,
          ),
        ),
      ],
    );
  }

  List<Widget> buildEnterNameOfUser() {
    return [
      Text(S.of(context).firstName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          )),
      const SizedBox(height: 8),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Theme.of(context).primaryColorLight, width: 1.5)),
        child: TextField(
          decoration: const InputDecoration(border: InputBorder.none),
          controller: userFirstname,
        ),
      ),
      const SizedBox(height: 16),
      Text(S.of(context).lastName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          )),
      const SizedBox(height: 8),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
                color: Theme.of(context).primaryColorLight, width: 1.5)),
        child: TextField(
          decoration: const InputDecoration(border: InputBorder.none),
          controller: userLastname,
        ),
      )
    ];
  }

  Widget buildDisplayName() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).displayName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: Theme.of(context).primaryColorLight,
              width: 1.5,
            ),
          ),
          child: TextField(
            decoration: const InputDecoration(border: InputBorder.none),
            controller: userDisplayName,
            enabled: ServerConfig().type != ConfigType.magento,
          ),
        ),
      ],
    );
  }

  Widget buildButtonUpdate() {
    return CommonSafeArea(
      child: ElevatedButton(
        onPressed: isLoading ? null : updateUserInfo,
        child: Text(
          S.of(context).update,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
