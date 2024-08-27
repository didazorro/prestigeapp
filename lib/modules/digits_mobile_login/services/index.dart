import 'dart:convert' as convert;

import 'package:inspireui/inspireui.dart';
import 'package:quiver/strings.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/user.dart';
import '../../../services/services.dart';

class DigitsMobileLoginServices {
  final domain = Services().api.domain;

  Future<dynamic> _postRequest(String path, dynamic body) async {
    try {
      var response = await httpPost(
          Uri.parse('$domain/wp-json/api/flutter_user/digits/$path'),
          body: convert.jsonEncode(body),
          headers: {'Content-Type': 'application/json'});
      return convert.jsonDecode(response.body);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> signUpCheck({
    required String username,
    required String email,
    required String? countryCode,
    required String? mobile,
  }) async {
    try {
      var response = await _postRequest('register/check', {
        'username': username,
        'email': email,
        'country_code': countryCode,
        'mobile': mobile
      });

      /// If the check is successful, it will return a boolean `true`, otherwise it will return a Map
      if (response is Map && isNotBlank(response['message'])) {
        var code = response['code'];

        switch (code) {
          case 'plugin_not_found':
            throw Exception(S.current.installDigitsPlugin);
          case 'invalid_email':
            throw Exception(S.current.emailIsRequired);
          case 'existed_email':
            throw Exception(S.current.emailAlreadyInUse);
          case 'invalid_username':
            throw Exception(S.current.usernameIsRequired);
          case 'existed_username':
            throw Exception(S.current.usernameAlreadyInUse);
          case 'invalid_country_code':
            throw Exception(S.current.countryCodeIsRequired);
          case 'invalid_mobile':
            throw Exception(S.current.mobileIsRequired);
          case 'existed_mobile':
            throw Exception(S.current.mobileNumberInUse);
          default:
            throw Exception(response['message']);
        }
      } else {
        return true;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<User> signUp({
    required String username,
    required String email,
    required String? countryCode,
    required String? mobile,
    String? firstName,
    String? lastName,
    String? fToken,
    String? otp,
  }) async {
    try {
      var bodyReq = {
        'username': username,
        'email': email,
        'country_code': countryCode,
        'mobile': mobile,
        'whatsapp': kAdvanceConfig.enableDigitsMobileWhatsApp,
        if (firstName?.isNotEmpty ?? false) 'name': firstName,
        if (lastName?.isNotEmpty ?? false) 'last_name': lastName,
        if (fToken?.isNotEmpty ?? false) 'ftoken': fToken,
        if (otp?.isNotEmpty ?? false) 'otp': otp,
      };

      var jsonDecode = await _postRequest('register', bodyReq);

      if (isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<bool> loginCheck({
    required String? countryCode,
    required String? mobile,
  }) async {
    try {
      var response = await _postRequest(
          'login/check', {'country_code': countryCode, 'mobile': mobile});

      /// If the check is successful, it will return a boolean `true`, otherwise it will return a Map
      if (response is Map && isNotBlank(response['message'])) {
        var code = response['code'];
        switch (code) {
          case 'plugin_not_found':
            throw Exception(S.current.installDigitsPlugin);
          case 'invalid_country_code':
            throw Exception(S.current.countryCodeIsRequired);
          case 'invalid_mobile':
            throw Exception(S.current.mobileIsRequired);
          case 'existed_mobile':
            throw Exception(S.current.mobileNumberInUse);
          default:
            throw Exception(response['message']);
        }
      } else {
        return true;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<User> login({
    required String? countryCode,
    required String? mobile,
    String? otp,
    String? fToken,
  }) async {
    try {
      var bodyReq = {
        'country_code': countryCode,
        'mobile': mobile,
        'whatsapp': kAdvanceConfig.enableDigitsMobileWhatsApp,
        if (otp?.isNotEmpty ?? false) 'otp': otp,
        if (fToken?.isNotEmpty ?? false) 'ftoken': fToken,
      };

      var jsonDecode = await _postRequest('login', bodyReq);

      if (isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        return User.fromWooJson(jsonDecode['user'], jsonDecode['cookie']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<bool> sendOTP({
    required String? countryCode,
    required String? mobile,
    required bool forRegister,
  }) async {
    try {
      var jsonDecode = await _postRequest('send_otp', {
        'country_code': countryCode,
        'mobile': mobile,
        'type': forRegister ? 'register' : 'login',
        'whatsapp': kAdvanceConfig.enableDigitsMobileWhatsApp,
      });

      var code = jsonDecode['code'];
      if (isNotBlank(jsonDecode['message'])) {
        switch (code) {
          case 'plugin_not_found':
            throw Exception(S.current.installDigitsPlugin);
          case 'invalid_country_code':
            throw Exception(S.current.countryCodeIsRequired);
          case 'invalid_mobile':
            throw Exception(S.current.mobileIsRequired);
          default:
            throw Exception(jsonDecode['message']);
        }
      }
      if (jsonDecode['data'] != null &&
          isNotBlank(jsonDecode['data']['message'])) {
        throw Exception(jsonDecode['data']['message']);
      }
      return jsonDecode['code'].toString() == '1';
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<bool> resendOTP({
    required String? countryCode,
    required String? mobile,
    required bool forRegister,
  }) async {
    try {
      var jsonDecode = await _postRequest('resend_otp', {
        'country_code': countryCode,
        'mobile': mobile,
        'type': forRegister ? 'register' : 'login',
        'whatsapp': kAdvanceConfig.enableDigitsMobileWhatsApp,
      });

      var code = jsonDecode['code'];
      if (isNotBlank(jsonDecode['message'])) {
        switch (code) {
          case 'plugin_not_found':
            throw Exception(S.current.installDigitsPlugin);
          case 'invalid_country_code':
            throw Exception(S.current.countryCodeIsRequired);
          case 'invalid_mobile':
            throw Exception(S.current.mobileIsRequired);
          default:
            throw Exception(jsonDecode['message']);
        }
      }
      if (jsonDecode['data'] != null &&
          isNotBlank(jsonDecode['data']['message'])) {
        throw Exception(jsonDecode['data']['message']);
      }
      return jsonDecode['code'] == '1';
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }
}
