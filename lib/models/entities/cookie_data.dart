import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CookieData {
  final String name;
  final String value;

  CookieData(this.name, this.value);

  String get cookieText {
    return '$name=$value';
  }

  bool get valid => name.isNotEmpty && value.isNotEmpty;

  Map<String, dynamic> toJson() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'value': value});

    return result;
  }

  factory CookieData.fromJson(Map<String, dynamic> map) {
    return CookieData(
      map['name'] ?? '',
      map['value'] ?? '',
    );
  }

  CookieData copyWith({
    String? name,
    String? value,
  }) {
    return CookieData(
      name ?? this.name,
      value ?? this.value,
    );
  }
}

extension CookieDataExt on List<CookieData> {
  Map<String, String> get cookieHeader {
    return {'cookie': map((e) => e.cookieText).toList().join('; ')};
  }

  String get cookieText => map((e) => e.cookieText).toList().join('; ');

  void updateCartToken(String token) {
    final index = indexWhere((element) => element.name == 'cart_token');
    if (index != -1) {
      this[index] = this[index].copyWith(value: token);
    } else {
      add(CookieData('cart_token', token));
    }
  }
}

extension CookieExt on List<Cookie> {
  List<CookieData> toCookiesData() {
    return map((e) => CookieData(e.name.toString(), e.value?.toString() ?? ''))
        .toList();
  }
}

const _excludeCookie = ['expires', 'path'];

extension StringExt on String {
  List<CookieData> convertToCookies() {
    final datas = split(';');
    final cookies = <CookieData>[];
    for (var data in datas) {
      final dataCookie = data.split('=');
      if (dataCookie.length == 2) {
        final name =
            dataCookie.first.replaceAll('httponly', '').replaceAll(' ', '');
        final value = dataCookie.last;

        if (_excludeCookie.contains(name) == false) {
          final cookie = CookieData(name, value);

          cookies.add(cookie);
        }
      }
    }

    return cookies;
  }
}
