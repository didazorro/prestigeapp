import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:fstore/models/entities/b2bking/tired_price.dart';
import 'package:fstore/models/entities/product.dart';
import 'package:fstore/services/services.dart';
import 'package:http/http.dart' as http;
import 'package:inspireui/inspireui.dart';
import 'package:quiver/strings.dart';

import '../models/field.dart';
import '../models/info_item.dart';
import '../models/role.dart';

class B2BKingServices {
  final domain = Services().api.domain;

  Future<List<B2BKingRole>> getRoles(BuildContext context) async {
    try {
      var list = <B2BKingRole>[];
      var response =
          await httpGet(Uri.parse('$domain/wp-json/api/flutter_b2bking/roles'));
      var jsonDecode = convert.jsonDecode(response.body);
      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        for (var item in jsonDecode) {
          list.add(B2BKingRole.fromJson(item));
        }
        return list;
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<List<B2BKingField>> getRegisterFields() async {
    try {
      var list = <B2BKingField>[];
      var response = await httpGet(
          Uri.parse('$domain/wp-json/api/flutter_b2bking/register_fields'));
      var jsonDecode = convert.jsonDecode(response.body);
      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        for (var item in jsonDecode) {
          list.add(B2BKingField.fromJson(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future signUp(
      {required String email,
      required String password,
      required String role,
      List? customFields}) async {
    try {
      var params = {
        'b2bking_registration_roles_dropdown': role,
        'email': email,
        'password': password
      };
      for (var item in customFields ?? []) {
        params['b2bking_custom_field_${item['id']}'] = item['value'];
      }
      var request = http.MultipartRequest(
          'POST', Uri.parse('$domain/wp-json/api/flutter_b2bking/register'));
      request.fields.addAll(params);

      var response = await request.send();

      final data = await response.stream.bytesToString();
      var jsonDecode = convert.jsonDecode(data);
      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      }
    } catch (e) {
      //This error exception is about your Rest API is not config correctly so that not return the correct JSON format, please double check the document from this link https://docs.inspireui.com/fluxstore/woocommerce-setup/
      rethrow;
    }
  }

  Future<List<B2BKingTiredPrice>> getTiredPrices(Product product,
      {String? token}) async {
    try {
      var list = <B2BKingTiredPrice>[];
      var response = await httpGet(
          Uri.parse(
              '$domain/wp-json/api/flutter_b2bking/product/${product.id}/tiered_price'),
          headers: {
            'User-Cookie': token ?? '',
          });
      var jsonDecode = convert.jsonDecode(response.body);
      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        for (var item in jsonDecode) {
          list.add(B2BKingTiredPrice.fromJson(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<List<B2BKingInfoItem>> getInfoTable(Product product,
      {String? token}) async {
    try {
      var list = <B2BKingInfoItem>[];
      var response = await httpGet(
          Uri.parse(
              '$domain/wp-json/api/flutter_b2bking/product/${product.id}/info_table'),
          headers: {
            'User-Cookie': token ?? '',
          });
      var jsonDecode = convert.jsonDecode(response.body);
      if (jsonDecode is Map && isNotBlank(jsonDecode['message'])) {
        throw Exception(jsonDecode['message']);
      } else {
        for (var item in jsonDecode) {
          list.add(B2BKingInfoItem.fromJson(item));
        }
        return list;
      }
    } catch (e) {
      rethrow;
    }
  }
}
