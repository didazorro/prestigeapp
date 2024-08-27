class ListingType {
  String? id;
  String? title;
  String? name;

  ListingType.fromMyListingJson(json) {
    id = json['ID']?.toString();
    title = json['post_title'];
    name = json['post_name'];
  }
}
