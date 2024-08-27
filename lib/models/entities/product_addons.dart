// ignore_for_file: constant_identifier_names
enum AddonsType {
  heading,
  radiobutton,
  multiple_choice,
  checkbox,
  custom_text,
  custom_textarea,
  custom_price,
  file_upload,
  quantity_base,
  input_multiplier;

  static AddonsType? fromString(String? value) {
    final index = AddonsType.values.indexWhere((e) => e.name == value);
    return index != -1 ? AddonsType.values[index] : null;
  }

  bool get isRadio => [
        AddonsType.radiobutton,
        AddonsType.multiple_choice,
      ].contains(this);

  bool get isEnteredByUser => [
        AddonsType.custom_textarea,
        AddonsType.custom_text,
        AddonsType.custom_price,
        AddonsType.file_upload,
        AddonsType.input_multiplier,
      ].contains(this);
}

class ProductAddons {
  String? name;
  String? description;
  AddonsType? type;
  String? display;
  String? price;
  int? position;
  List<AddonsOption>? options;
  bool? required;
  Map<String, AddonsOption> defaultOptions = {};
  String? fieldName;
  String? priceType;
  bool? descriptionEnable;

  /// using for WC Appointment
  bool? hideDuration;
  bool? hidePrice;
  bool? showOnTop;
  int? duration;

  ProductAddons({
    this.name,
    this.description,
    this.type,
    this.position,
    this.options,
    this.required = false,
    this.priceType,
    this.descriptionEnable,
    this.hideDuration,
    this.hidePrice,
    this.showOnTop,
    this.duration,
  });

  ProductAddons.fromJson(Map json) {
    name = json['name'];
    final desEnable = json['description_enable'];
    descriptionEnable =
        int.tryParse('$desEnable') == 1 || bool.tryParse('$desEnable') == true;
    type = AddonsType.fromString(json['type']);
    display = json['display'];
    price = '${json['price']}';
    position = json['position'];
    required = json['required'] == 1;
    fieldName = json['field_name'];
    priceType = json['price_type'];
    if (json['options'] != null) {
      final List<dynamic> values = json['options'] ?? [];
      options = List<AddonsOption>.generate(
        values.length,
        (index) {
          final option = AddonsOption.fromJson(values[index]);
          option.parent = name;
          option.type = type;
          option.display = display;
          option.fieldName = fieldName;
          option.index = index + 1;
          if ((option.isDefault ?? false) && option.label != null) {
            defaultOptions[option.label!] = option;
          }
          return option;
        },
      );
    }
    hideDuration =
        int.tryParse('${json['wc_appointment_hide_duration_label']}') == 1;
    hidePrice = int.tryParse('${json['wc_appointment_hide_price_label']}') == 1;
    showOnTop = int.tryParse('${json['wc_appointment_show_on_top']}') == 1;
    duration = int.tryParse('${json['duration']}');
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['type'] = type?.name;
    data['display'] = display;
    data['price'] = price;
    data['position'] = position;
    data['field_name'] = fieldName;
    data['required'] = (required ?? false) ? 1 : 0;
    data['price_type'] = priceType;
    data['description_enable'] = descriptionEnable;
    if (options != null) {
      data['options'] = options!.map((v) => v.toJson()).toList();
    }
    data['wc_appointment_hide_duration_label'] = hideDuration;
    data['wc_appointment_hide_price_label'] = hidePrice;
    data['wc_appointment_show_on_top'] = showOnTop;
    data['duration'] = duration;
    return data;
  }
}

class AddonsOption {
  String? parent;
  String? label;
  String? price;
  String? priceType;
  bool? isDefault;
  AddonsType? type;
  String? display;
  String? fieldName;
  int? index;
  int? duration;

  bool get isFlatFee => priceType == 'flat_fee';

  bool get isQuantityBased => priceType == 'quantity_based';

  AddonsOption({
    this.parent,
    this.type,
    this.display,
    this.label,
    this.price,
    this.priceType,
    this.isDefault = false,
    this.fieldName,
    this.index,
  });

  AddonsOption.copy(AddonsOption option) {
    parent = option.parent;
    label = option.label;
    priceType = option.priceType;
    price = option.price;
    type = option.type;
    display = option.display;
    isDefault = option.isDefault;
    fieldName = option.fieldName;
    index = option.index;
    duration = option.duration;
  }

  AddonsOption.fromJson(Map json) {
    parent = json['parent'];
    label = json['label'];
    priceType = json['price_type'];
    price = '${json['price']}';
    type = AddonsType.fromString(json['type']);
    display = json['display'];
    isDefault = json['default'] == '1';
    fieldName = json['field_name'];
    index = json['index'];
    duration = int.tryParse('${json['duration']}');
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['parent'] = parent;
    data['label'] = label;
    data['price'] = price;
    data['price_type'] = priceType;
    data['type'] = type?.name;
    data['display'] = display;
    data['default'] = (isDefault ?? false) ? '1' : '0';
    data['field_name'] = fieldName;
    data['index'] = index;
    data['duration'] = duration;
    return data;
  }
}
