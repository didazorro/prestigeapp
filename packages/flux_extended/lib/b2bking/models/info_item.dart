class B2BKingInfoItem {
  const B2BKingInfoItem({this.label, this.text});

  final String? label;
  final String? text;

  factory B2BKingInfoItem.fromJson(Map parsedJson) => B2BKingInfoItem(
        label: parsedJson['label'],
        text: parsedJson['text'],
      );

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['label'] = label;
    data['text'] = text;
    return data;
  }
}
