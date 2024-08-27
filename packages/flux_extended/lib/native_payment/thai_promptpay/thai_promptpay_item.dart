class ThaiPromptPayItem {
  String? thankMsg;
  String? qrCode;
  String? id;
  String? name;
  String? type;

  ThaiPromptPayItem.fromJson(Map parsedJson) {
    thankMsg = parsedJson['thank_msg'];
    qrCode = parsedJson['qrcode_url'];
    id = parsedJson['promptpay_id'];
    name = parsedJson['promptpay_name'];
    type = parsedJson['promptpay_type'];
  }
}
