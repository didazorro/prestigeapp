class WalletPaymentMethod {
  const WalletPaymentMethod(
      {required this.id, required this.title, this.formFields});

  final String id;
  final String title;
  final List<WalletPaymentFormField>? formFields;

  factory WalletPaymentMethod.fromJson(Map json) => WalletPaymentMethod(
        id: json['id'],
        title: json['method_title'],
        formFields: json['form_fields'] != null && json['form_fields'] is Map
            ? Map.from(json['form_fields'])
                .keys
                .map(
                  (key) => WalletPaymentFormField.fromJson(
                    key,
                    json['form_fields'][key],
                  ),
                )
                .toList()
            : [],
      );
}

class WalletPaymentFormField {
  const WalletPaymentFormField(
      {required this.name,
      required this.label,
      required this.type,
      this.required = false});

  final String name;
  final String label;
  final String type;
  final bool required;

  factory WalletPaymentFormField.fromJson(String key, Map json) =>
      WalletPaymentFormField(
          name: key,
          label: json['label'],
          type: json['type'],
          required: json['required'] == true);
}

class WalletPaymentFormFieldValue {
  const WalletPaymentFormFieldValue({
    required this.name,
    required this.value,
  });

  final String name;
  final dynamic value;
}
