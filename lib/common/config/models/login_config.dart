import '../../../services/service_config.dart';
import 'apple_login_config.dart';

class LoginConfig {
  bool isRequiredLogin = false;
  bool showAppleLogin = false;
  bool showFacebook = false;
  bool showSMSLogin = false;
  bool showGoogleLogin = false;
  bool showPhoneNumberWhenRegister = false;
  bool requirePhoneNumberWhenRegister = false;
  bool isResetPasswordSupported = false;
  String facebookAppId = '';
  String facebookLoginProtocolScheme = '';
  String facebookClientToken = '';
  bool smsLoginAsDefault = false;
  AppleLoginConfig? appleLoginSetting;
  bool _enable = true;
  bool enableRegister = true;
  bool requireUsernameWhenRegister = false;

  /// Login cannot be disabled on platforms without GuestCheckout support.
  bool get enable => ServerConfig().isSupportHideAuthenticate ? _enable : true;

  LoginConfig(
      {this.isRequiredLogin = false,
      this.showAppleLogin = false,
      this.showFacebook = false,
      this.showSMSLogin = false,
      this.showGoogleLogin = false,
      this.showPhoneNumberWhenRegister = false,
      this.requirePhoneNumberWhenRegister = false,
      this.isResetPasswordSupported = false,
      this.facebookAppId = '',
      this.facebookLoginProtocolScheme = '',
      this.facebookClientToken = '',
      bool? enable,
      this.smsLoginAsDefault = false,
      this.appleLoginSetting,
      this.enableRegister = true,
      this.requireUsernameWhenRegister = false})
      : _enable = enable ?? true;

  LoginConfig.fromJson(dynamic json) {
    isRequiredLogin = json['IsRequiredLogin'] ?? false;
    showAppleLogin = json['showAppleLogin'] ?? false;
    showFacebook = json['showFacebook'] ?? false;
    showSMSLogin = json['showSMSLogin'] ?? false;
    showGoogleLogin = json['showGoogleLogin'] ?? false;
    showPhoneNumberWhenRegister = json['showPhoneNumberWhenRegister'] ?? false;
    requirePhoneNumberWhenRegister =
        json['requirePhoneNumberWhenRegister'] ?? false;
    isResetPasswordSupported = json['isResetPasswordSupported'] ?? false;
    facebookAppId = json['facebookAppId'] ?? '';
    facebookLoginProtocolScheme = json['facebookLoginProtocolScheme'] ?? '';
    facebookClientToken = json['facebookClientToken'] ?? '';
    smsLoginAsDefault = json['smsLoginAsDefault'] ?? false;
    appleLoginSetting = json['appleLoginSetting'] != null
        ? AppleLoginConfig.fromJson(json['appleLoginSetting'])
        : null;
    _enable = json['enable'] ?? true;
    enableRegister = json['enableRegister'] ?? true;
    requireUsernameWhenRegister = json['requireUsernameWhenRegister'] ?? false;
  }

  LoginConfig copyWith(
      {bool? isRequiredLogin,
      bool? showAppleLogin,
      bool? showFacebook,
      bool? showSMSLogin,
      bool? showGoogleLogin,
      bool? showPhoneNumberWhenRegister,
      bool? requirePhoneNumberWhenRegister,
      bool? isResetPasswordSupported,
      String? facebookAppId,
      String? facebookLoginProtocolScheme,
      String? facebookClientToken,
      bool? smsLoginAsDefault,
      AppleLoginConfig? appleLoginSetting,
      bool? enable,
      bool? enableRegister,
      bool? requireUsernameWhenRegister}) {
    return LoginConfig(
      isRequiredLogin: isRequiredLogin ?? this.isRequiredLogin,
      showAppleLogin: showAppleLogin ?? this.showAppleLogin,
      showFacebook: showFacebook ?? this.showFacebook,
      showSMSLogin: showSMSLogin ?? this.showSMSLogin,
      showGoogleLogin: showGoogleLogin ?? this.showGoogleLogin,
      showPhoneNumberWhenRegister:
          showPhoneNumberWhenRegister ?? this.showPhoneNumberWhenRegister,
      requirePhoneNumberWhenRegister:
          requirePhoneNumberWhenRegister ?? this.requirePhoneNumberWhenRegister,
      isResetPasswordSupported:
          isResetPasswordSupported ?? this.isResetPasswordSupported,
      facebookAppId: facebookAppId ?? this.facebookAppId,
      facebookLoginProtocolScheme:
          facebookLoginProtocolScheme ?? this.facebookLoginProtocolScheme,
      facebookClientToken: facebookClientToken ?? this.facebookClientToken,
      smsLoginAsDefault: smsLoginAsDefault ?? this.smsLoginAsDefault,
      appleLoginSetting: appleLoginSetting ?? this.appleLoginSetting,
      enable: enable ?? _enable,
      enableRegister: enableRegister ?? this.enableRegister,
      requireUsernameWhenRegister:
          requireUsernameWhenRegister ?? this.requireUsernameWhenRegister,
    );
  }

  Map toJson() {
    var map = <String, dynamic>{};
    map['IsRequiredLogin'] = isRequiredLogin;
    map['showAppleLogin'] = showAppleLogin;
    map['showFacebook'] = showFacebook;
    map['showSMSLogin'] = showSMSLogin;
    map['showGoogleLogin'] = showGoogleLogin;
    map['showPhoneNumberWhenRegister'] = showPhoneNumberWhenRegister;
    map['requirePhoneNumberWhenRegister'] = requirePhoneNumberWhenRegister;
    map['isResetPasswordSupported'] = isResetPasswordSupported;
    map['facebookAppId'] = facebookAppId;
    map['facebookLoginProtocolScheme'] = facebookLoginProtocolScheme;
    map['facebookClientToken'] = facebookClientToken;
    map['smsLoginAsDefault'] = smsLoginAsDefault;
    map['appleLoginSetting'] = appleLoginSetting?.toJson();
    map['enable'] = _enable;
    map['enableRegister'] = enableRegister;
    map['requireUsernameWhenRegister'] = requireUsernameWhenRegister;
    return map;
  }
}
