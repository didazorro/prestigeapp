class B2BKingField {
  const B2BKingField(
      {this.id,
      this.label,
      this.placeholder,
      this.type,
      this.required,
      this.role});

  final int? id;
  final String? label;
  final String? placeholder;
  final String? type;
  final bool? required;
  final String? role;

  factory B2BKingField.fromJson(Map parsedJson) => B2BKingField(
        label: parsedJson['label'],
        id: parsedJson['ID'],
        role: parsedJson['role'],
        placeholder: parsedJson['placeholder'],
        type: parsedJson['type'],
        required: parsedJson['required'] == true,
      );
}
