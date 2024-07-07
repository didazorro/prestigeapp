import 'package:html_unescape/html_unescape.dart';
import 'package:intl/intl.dart';
import 'package:quiver/strings.dart';

import '../../../common/constants.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../vacation_settings.dart';
import 'store_hour.dart';

class Store {
  int? id;
  String? name;
  String? email;
  bool showEmail = true;
  String? chatEmail;
  double? rating;
  String? reviewCount;
  String? image;
  String? address;
  bool showAddress = true;
  String? banner;
  String? phone;
  bool showPhone = true;
  String? website;
  String? description;
  bool showDescription = true;
  bool? isFeatured;
  double? lat;
  double? long;
  Map<String, String>? socials;
  StoreHour? storeHour;
  VacationSettings? vacationSettings;
  String? link;

  Store.fromDokanJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];

    if (parsedJson['first_name'] != null && parsedJson['last_name'] != null) {
      name = '${parsedJson["first_name"]} ${parsedJson["last_name"]}';
    }

    link = parsedJson['shop_url'];

    if (isNotEmpty(parsedJson['name'])) {
      name = parsedJson['name'];
    }
    if (isNotEmpty(parsedJson['shop_name'])) {
      name = parsedJson['shop_name'];
    }
    if (isNotEmpty(parsedJson['store_name'])) {
      name = parsedJson['store_name'];
    }
    if (name != null) {
      name = HtmlUnescape().convert(name!);
    }

    email = parsedJson['email'] ?? '';
    chatEmail = email;
    showEmail = parsedJson['show_email'] != null
        ? parsedJson['show_email'] == true
        : true;
    rating = 0.0;
    if (parsedJson['rating'] != null) {
      if (parsedJson['rating']['rating'] != null &&
          double.tryParse(parsedJson['rating']['rating']) != null) {
        rating = double.parse("${parsedJson["rating"]["rating"]}");
      }
    }
    reviewCount = parsedJson['rating']?['count']?.toString();

    name = HtmlUnescape().convert(name!);

    String? stringLocation = '';
    if (parsedJson['location'] is String) {
      stringLocation = parsedJson['location'];
    } else if (parsedJson['location'] is List) {
      stringLocation = parsedJson['location'].join(',');
    }

    if (stringLocation?.isNotEmpty ?? false) {
      final arrLocation = stringLocation!.split(',');
      lat = arrLocation[0] != '' ? double.parse(arrLocation[0]) : 0;
      long = arrLocation[1] != '' ? double.parse(arrLocation[1]) : 0;
    }

    image = _parseImage(parsedJson['gravatar']);

    if (parsedJson['address'] is Map) {
      address = _formatDokanAddress(parsedJson['address']);
    }

    banner = _parseImage(parsedJson['banner']);
    phone = parsedJson['phone'];
    isFeatured = parsedJson['featured'] ?? false;
    showDescription = false;

    final time = parsedJson['store_open_close']?['time'];

    if (time != null && time is Map && time.isNotEmpty) {
      storeHour = StoreHour.fromDokan(time);
    }

    try {
      if (parsedJson['social'] is Map) {
        Map social = parsedJson['social'] ?? {};

        String? key = social.keys
            .firstWhere((o) => isNotBlank(social[o]), orElse: () => '');
        if (isNotBlank(key)) {
          website = social[key];
        }
      }
    } catch (e, trace) {
      printError(e, trace);
    }
  }

  Store.fromWCFMJson(Map<String, dynamic> parsedJson) {
    id = int.parse("${parsedJson["vendor_id"]}");

    if (isNotEmpty(parsedJson['vendor_shop_name'])) {
      name = parsedJson['vendor_shop_name'];
    }
    if (name != null) {
      name = HtmlUnescape().convert(name!);
    }

    email = parsedJson['vendor_email'];
    link = parsedJson['shop_url'];
    chatEmail = parsedJson['chat_email'] ?? email;
    rating = double.parse((parsedJson['store_rating'] != null &&
            parsedJson['store_rating'].toString().isNotEmpty)
        ? parsedJson['store_rating'].toString()
        : '0.0');

    reviewCount = parsedJson['vendor_reviews_count']?.toString();

    address = _formatWCFMAddress(parsedJson['vendor_address']);

    showDescription = !(parsedJson['store_hide_description'] != 'no');
    showAddress = !(parsedJson['store_hide_address'] != 'no');
    showEmail = !(parsedJson['store_hide_email'] != 'no');
    showPhone = !(parsedJson['store_hide_phone'] != 'no');

    if (parsedJson['vendor_description'] != null) {
      description = parsedJson['vendor_description'] is String
          ? parsedJson['vendor_description']
          : null;
    }
    if (Bidi.stripHtmlIfNeeded(description ?? '').trim().isEmpty) {
      showDescription = false;
    }

    if (parsedJson['settings'] != null && parsedJson['settings'] is Map) {
      image = _parseImage(parsedJson['settings']['gravatar']);
      if (isBlank(image)) {
        image = _parseImage(parsedJson['vendor_shop_logo']);
      }

      banner = _parseImage(parsedJson['settings']['mobile_banner']);
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['settings']['banner']);
      }
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['mobile_banner']);
      }
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['vendor_banner']);
      }
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['vendor_list_banner']);
      }

      lat = Helper.formatDouble(parsedJson['settings']['store_lat']);
      long = Helper.formatDouble(parsedJson['settings']['store_lng']);
      var geolocation = parsedJson['settings']['geolocation'];
      if (geolocation is Map) {
        lat ??= Helper.formatDouble(geolocation['store_lat']);
        long ??= Helper.formatDouble(geolocation['store_lng']);
      }

      phone = '';
      if (parsedJson['settings']['phone'] is List) {
        if (parsedJson['settings']['phone'].isNotEmpty) {
          phone = parsedJson['settings']['phone'][0];
        }
      }
      if (parsedJson['settings']['phone'] is String) {
        phone = parsedJson['settings']['phone'];
      }
      final socialJson = parsedJson['settings']['social'];
      if (socialJson != null && socialJson is Map) {
        socials = Map<String, String>.from(socialJson);
        if (socials!['fb'] != null) {
          socials!['facebook'] = socials!['fb'].toString();
          socials!.remove('fb');
        }
      }

      if (parsedJson['settings']['wcfm_store_hours'] != null) {
        storeHour =
            StoreHour.fromWCFM(parsedJson['settings']['wcfm_store_hours']);
      }
      vacationSettings = VacationSettings.fromJson(parsedJson['settings']);
    } else {
      banner = _parseImage(parsedJson['mobile_banner']);
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['vendor_shop_logo']);
      }
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['vendor_banner']);
      }
      if (isBlank(banner)) {
        banner = _parseImage(parsedJson['vendor_list_banner']);
      }
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'rating': rating,
      'image': image,
      'address': address,
      'banner': banner,
      'phone': phone,
      'website': website
    };
  }

  Store.fromLocalJson(Map json) {
    try {
      id = json['id'];
      name = json['name'];
      email = json['email'];
      rating = json['rating'];
      image = json['image'];
      address = json['address'];
      banner = json['banner'];
      phone = json['phone'];
      website = json['website'];
    } catch (e, trace) {
      printLog(e.toString());
      printLog(trace.toString());
    }
  }
}

extension on Store {
  // Format address from Dokan
  String? _formatDokanAddress(jsonData) {
    if (jsonData is! Map || jsonData.isEmpty) {
      return null;
    }

    var address = '';
    if (jsonData['street_1'] != null && jsonData['street_1'].isNotEmpty) {
      address = '${jsonData['street_1']}';
    }
    if (jsonData['street_2'] != null && jsonData['street_2'].isNotEmpty) {
      address = '$address, ${jsonData['street_2']}';
    }
    if (jsonData['city'] != null && jsonData['city'].isNotEmpty) {
      address = '$address, ${jsonData['city']}';
    }
    if (jsonData['state'] != null && jsonData['state'].isNotEmpty) {
      address = '$address, ${jsonData['state']}';
    }
    return address.trim();
  }

  // Format address from WCFM
  String? _formatWCFMAddress(String? address) {
    var addressFormat = '';
    var postCode = '';
    if (address == null || address.isEmpty) return addressFormat;

    var splitPostcode = address.split('-');
    var splitAddress = splitPostcode[0].split(',');

    if (splitPostcode.length > 1) {
      postCode = splitPostcode[1].trim();
    }
    if (splitAddress.isNotEmpty) {
      var newSplitAddress = splitAddress
          .map((e) => e.trim().replaceAll(RegExp(r'\s+'), ' '))
          .toList();
      newSplitAddress.removeWhere((address) => address.isEmpty);
      addressFormat = newSplitAddress.join(', ');
    }
    if (postCode.isNotEmpty) {
      if (addressFormat.isNotEmpty) {
        addressFormat += ' - $postCode';
      } else {
        addressFormat += postCode;
      }
    }

    return addressFormat;
  }

  // Get image, banner from dynamic data (String or bool or null)
  String? _parseImage(data) {
    if (data is String && data.startsWith('http')) {
      return data;
    }
    return null;
  }
}
