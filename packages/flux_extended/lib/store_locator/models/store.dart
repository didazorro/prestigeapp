import 'package:fstore/common/constants.dart';

class Store {
  String? id;
  String? name;
  String? description;
  String? image;
  String? address;
  String? link;
  String? directionLink;
  String? markerIcon;
  String? phone;
  String? mobile;
  String? fax;
  String? email;
  String? website;
  String? latitude;
  String? longitude;

  Store(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.address,
      this.link,
      this.directionLink,
      this.markerIcon,
      this.phone,
      this.mobile,
      this.fax,
      this.email,
      this.website,
      this.latitude,
      this.longitude});

  Store.fromJson(Map parsedJson) {
    id = '${parsedJson['id'] ?? ''}';
    name = parsedJson['name'] ?? '';
    description = parsedJson['description'] ?? '';
    image = parsedJson['image'] ?? '';
    if (image?.isEmpty ?? true) {
      image = kDefaultImage;
    }
    address = parsedJson['address'] ?? '';
    link = parsedJson['link'] ?? '';
    directionLink = parsedJson['direction_link'] ?? '';
    markerIcon = parsedJson['marker_icon'] ?? '';
    phone = parsedJson['phone'] ?? '';
    mobile = parsedJson['mobile_phone'] ?? '';
    fax = parsedJson['fax'] ?? '';
    email = parsedJson['email'] ?? '';
    website = parsedJson['website'] ?? '';
    latitude = parsedJson['latitude'] ?? '';
    longitude = parsedJson['longitude'] ?? '';
  }
}
