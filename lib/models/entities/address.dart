import 'package:country_pickers/utils/utils.dart';

import '../../common/constants.dart';

class Address {
  String? firstName;
  String? lastName;
  String? email;
  String? street;
  String? apartment;
  String? block;
  String? city;
  String? district;
  String? ward;
  String? state;
  String? country;
  String? countryId;
  String? phoneNumber;
  String? zipCode;
  String? mapUrl;
  String? latitude;
  String? longitude;
  bool isShow = true;

  Address({
    this.firstName,
    this.lastName,
    this.email,
    this.street,
    this.apartment,
    this.block,
    this.city,
    this.district,
    this.ward,
    this.state,
    this.country,
    this.phoneNumber,
    this.zipCode,
    this.mapUrl,
    this.latitude,
    this.longitude,
    this.isShow = true,
  });

  Address.fromJson(Map parsedJson) {
    firstName = parsedJson['first_name'] ?? '';
    lastName = parsedJson['last_name'] ?? '';
    apartment = parsedJson['company'] ?? '';
    street = parsedJson['address_1'] ?? '';
    block = parsedJson['address_2'] ?? '';
    city = parsedJson['city'] ?? '';
    state = parsedJson['state'] ?? '';
    country = parsedJson['country'] ?? '';
    email = parsedJson['email'] ?? '';
    isShow = parsedJson['isShow'] is bool ? parsedJson['isShow'] : true;
    // final alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
    // if (alphanumeric.hasMatch(firstName!)) {
    //   phoneNumber = firstName;
    // }
    phoneNumber = parsedJson['phone'] ?? '';
    zipCode = parsedJson['postcode'];
  }

  Address.fromOpencartJson(Map parsedJson) {
    firstName = parsedJson['firstname'];
    lastName = parsedJson['lastname'];
    apartment = parsedJson['company'];
    street = parsedJson['address_1'];
    block = parsedJson['address_2'];
    city = parsedJson['city'];
    state = parsedJson['zone_id'];
    country = parsedJson['country_id'];
    zipCode = parsedJson['postcode'];
  }

  Address.fromMagentoJson(Map<String, dynamic> parsedJson) {
    firstName = parsedJson['firstname'];
    lastName = parsedJson['lastname'];
    if (parsedJson['street'] != null) {
      var streets = List.from(parsedJson['street']);
      street = streets.isNotEmpty ? streets[0] : '';
      block = streets.length > 1 ? streets[1] : '';
    }

    city = parsedJson['city'];
    state = parsedJson['region'];
    country = parsedJson['country_id'];
    email = parsedJson['email'];
    phoneNumber = parsedJson['telephone'];
    zipCode = parsedJson['postcode'];
  }

  Address.fromPrestaJson(Map<String, dynamic> parsedJson) {
    firstName = parsedJson['firstname'];
    lastName = parsedJson['lastname'];
    street = parsedJson['address1'];
    block = parsedJson['address2'];
    city = parsedJson['city'];
    apartment = parsedJson['company'];
    country = parsedJson['country'];
    phoneNumber = parsedJson['phone'];
    zipCode = parsedJson['postcode'];
  }

  Map<String, dynamic> toJson() {
    var address = <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'address_1': street ?? '',
      'address_2': block ?? '',
      'company': apartment ?? '',
      'city': city,
      'state': state,
      'country': country,
      'phone': phoneNumber,
      'postcode': zipCode,
      'mapUrl': mapUrl,
      'isShow': isShow,
    };
    if (email != null && email!.isNotEmpty) {
      address['email'] = email;
    }
    return address;
  }

  Map<String, dynamic> toWCFMJson() {
    var address = toJson();
    if (street?.isNotEmpty ?? false) {
      address['wcfmmp_user_location'] = street;
    }
    if (latitude?.isNotEmpty ?? false) {
      address['wcfmmp_user_location_lat'] = latitude;
    }
    if (longitude?.isNotEmpty ?? false) {
      address['wcfmmp_user_location_lng'] = longitude;
    }
    return address;
  }

  Address.fromHaravanJson(Map parsedJson) {
    firstName = parsedJson['first_name'] ?? '';
    lastName = parsedJson['last_name'] ?? '';
    apartment = parsedJson['company'] ?? '';
    street = parsedJson['address1'] ?? '';
    block = parsedJson['address2'] ?? '';
    city = parsedJson['city'] ?? '';
    state = parsedJson['province'] ?? '';
    district = parsedJson['district'] ?? '';
    ward = parsedJson['ward'] ?? '';
    country = parsedJson['country'] ?? '';
    email = parsedJson['email'] ?? '';
    isShow = parsedJson['isShow'] is bool ? parsedJson['isShow'] : true;
    // final alphanumeric = RegExp(r'^[a-zA-Z0-9]+$');
    // if (alphanumeric.hasMatch(firstName!)) {
    //   phoneNumber = firstName;
    // }
    phoneNumber = parsedJson['phone'] ?? '';
    zipCode = parsedJson['zip'] ?? '';
  }

  Address.fromLocalJson(Map json) {
    try {
      firstName = json['first_name'];
      lastName = json['last_name'];
      street = json['address_1'];
      block = json['address_2'];
      apartment = json['company'];
      city = json['city'];
      state = json['state'];
      country = json['country'];
      email = json['email'];
      phoneNumber = json['phone'];
      zipCode = json['postcode'];
      mapUrl = json['mapUrl'];
      isShow = json['isShow'] is bool ? json['isShow'] : true;
    } catch (e) {
      printLog(e.toString());
    }
  }

  Map<String, dynamic> toMagentoJson() {
    return {
      'address': {
        'region': state,
        'country_id': country,
        'region_id': state != null && int.tryParse(state!) != null
            ? int.parse(state!)
            : 0,
        'street': [
          street,
          '$apartment${(block?.isEmpty ?? true) ? '' : ' - $block'}',
        ],
        'postcode': zipCode,
        'city': city,
        'firstname': firstName,
        'lastname': lastName,
        'email': email,
        'telephone': phoneNumber,
        'same_as_billing': 1
      }
    };
  }

  Map<String, dynamic> toOpencartJson() {
    return {
      'zone_id': state,
      'country_id': countryId ?? country,
      'address_1': street ?? '',
      'address_2': block ?? '',
      'company': apartment ?? '',
      'postcode': zipCode,
      'city': city,
      'firstname': firstName,
      'lastname': lastName,
      'email': email,
      'telephone': phoneNumber
    };
  }

  bool isValid() {
    return firstName!.isNotEmpty &&
        lastName!.isNotEmpty &&
        email!.isNotEmpty &&
        street!.isNotEmpty &&
        city!.isNotEmpty &&
        state!.isNotEmpty &&
        country!.isNotEmpty &&
        phoneNumber!.isNotEmpty;
  }

  Map<String, dynamic> toJsonEncodable() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'address_1': street ?? '',
      'address_2': block ?? '',
      'company': apartment ?? '',
      'city': city,
      'state': state,
      'country': country,
      'email': email,
      'phone': phoneNumber,
      'postcode': zipCode,
      'mapUrl': mapUrl,
      'isShow': isShow,
    };
  }

  Address.fromShopifyJson(Map json) {
    try {
      firstName = json['firstName'];
      lastName = json['lastName'];
      street = json['address1'];
      block = json['address2'];
      apartment = json['company'];
      city = json['city'];
      state = json['province'];
      country = json['country'];
      email = json['email'];
      phoneNumber = json['phone'];
      zipCode = json['zip'];
    } catch (e) {
      printLog(e.toString());
    }
  }

  Map<String, dynamic> toShopifyJson() {
    return {
      'address': {
        'province': state,
        'country': country,
        'address1': street,
        'address2': block,
        'company': apartment,
        'zip': zipCode,
        'city': city,
        'firstName': firstName,
        'lastName': lastName,
        'phone': phoneNumber,
      }
    };
  }

  Address.fromOpencartOrderJson(Map json) {
    try {
      firstName = json['shipping_firstname'];
      lastName = json['shipping_lastname'];
      street = json['shipping_address_1'];
      block = json['shipping_address_2'];
      apartment = json['shipping_company'];
      city = json['shipping_city'];
      state = json['shipping_zone'];
      country = json['shipping_country'];
      email = json['email'];
      phoneNumber = json['telephone'];
      zipCode = json['shipping_postcode'];
    } catch (e) {
      printLog(e.toString());
    }
  }

  Address.fromBigCommerceJson(Map json) {
    try {
      firstName = json['first_name'];
      lastName = json['last_name'];
      apartment = json['company'];
      street = json['street_1'];
      block = json['street_2'];
      city = json['city'];
      state = json['state'];
      zipCode = json['zip'];
      country = json['country'];
      countryId = json['country_iso2'];
      phoneNumber = json['phone'];
      email = json['email'];
    } catch (e) {
      printLog(e.toString());
    }

    //   Map<String, dynamic> toBigCommerceJson() {
    //     final data = <String, dynamic>{};
    //     data['first_name'] = firstName;
    //     data['last_name'] = lastName;
    //     data['company'] = apartment;
    //     data['street_1'] = street;
    //     data['street_2'] = block;
    //     data['city'] = city;
    //     data['state'] = state;
    //     data['zip'] = zipCode;
    //     data['country'] = country;
    //     data['country_iso2'] = countryId;
    //     data['phone'] = phoneNumber;
    //     data['email'] = email;
    //     return data;
    //   }
  }

  @override
  String toString() {
    var output = '';
    if (street != null) {
      output += ' $street';
    }
    if (country != null) {
      output += ' $country';
    }
    if (city != null) {
      output += ' $city';
    }

    return output.trim();
  }

  String get fullName => [firstName ?? '', lastName ?? ''].join(' ').trim();

  String get fullAddress => [
        apartment ?? '',
        street ?? '',
        block ?? '',
        city ?? '',
        state ?? '',
        district ?? '',
        ward ?? '',
        zipCode ?? '',
        country ?? '',
      ].join(' ').trim();

  String get fullInfoAddress {
    var info = [];
    if (street?.isNotEmpty ?? false) {
      info.add(street);
    }

    if (block?.isNotEmpty ?? false) {
      info.add(block);
    }

    if (apartment?.isNotEmpty ?? false) {
      info.add(apartment);
    }

    if (ward?.isNotEmpty ?? false) {
      info.add(ward);
    }

    if (district?.isNotEmpty ?? false) {
      info.add(district);
    }

    if (city?.isNotEmpty ?? false) {
      info.add(city);
    }

    if (state?.isNotEmpty ?? false) {
      info.add(state);
    }

    if (country?.isNotEmpty ?? false) {
      info.add(_getCountryName(country));
    }

    var address = info.join(', ');
    if (zipCode?.isNotEmpty ?? false) {
      address = '$address - $zipCode';
    }

    return address;
  }

  String _getCountryName(country) {
    try {
      return CountryPickerUtils.getCountryByIsoCode(country).name;
    } catch (err) {
      return country;
    }
  }

  bool isDiff(Address address) {
    return city != address.city ||
        street != address.street ||
        zipCode != address.zipCode ||
        state != address.state;
  }

  bool compareFullInfo(Address address) {
    return (city != address.city ||
            street != address.street ||
            zipCode != address.zipCode ||
            state != address.state ||
            fullName != address.fullName ||
            phoneNumber != address.phoneNumber ||
            firstName != address.firstName ||
            lastName != address.lastName) ==
        false;
  }

  String toOrderHistoryAddress() {
    final address = [
      if (city?.isNotEmpty ?? false) city,
      if (country?.isNotEmpty ?? false) country,
    ];

    var fullInfo = [
      if (firstName?.isNotEmpty ?? false) firstName,
      if (address.isNotEmpty) address.join(', ')
    ];

    return fullInfo.isNotEmpty ? fullInfo.join(' | ') : '';
  }
}
