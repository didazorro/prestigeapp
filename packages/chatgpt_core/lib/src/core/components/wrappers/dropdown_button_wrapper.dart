import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

typedef DisplayValue<T> = String Function(T?);

class DropdownButtonWrapper<T> extends StatelessWidget {
  const DropdownButtonWrapper({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
    this.displayValue,
    this.decoration,
    this.dropdownWidth = 180,
    this.buttonHeight = 38,
    this.offset = const Offset(-10, -12),
  });

  final List<T> items;
  final Function(T?) onChanged;
  final T value;
  final DisplayValue<T>? displayValue;
  final BoxDecoration? decoration;
  final double dropdownWidth;
  final double buttonHeight;
  final Offset offset;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButtonHideUnderline(
      child: DropdownButton2<T>(
        isExpanded: true,
        items: items
            .map(
              (item) => DropdownMenuItem<T>(
                value: item,
                child: Text(
                  displayValue == null ? item.toString() : displayValue!(item),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
        menuItemStyleData: const MenuItemStyleData(
          height: 45,
        ),
        value: value,
        onChanged: onChanged,
        iconStyleData: IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios_outlined,
            color: theme.hintColor,
          ),
          iconSize: 14,
          iconEnabledColor: theme.colorScheme.surface,
          iconDisabledColor: Colors.grey,
        ),

        buttonStyleData: ButtonStyleData(
          height: buttonHeight,
          width: 160,
          padding: const EdgeInsets.only(left: 16, right: 16),
          decoration: decoration ??
              BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                border: Border.all(
                  color: theme.colorScheme.primary.withOpacity(0.25),
                ),
                color: theme.scaffoldBackgroundColor,
              ),
          elevation: 0,
        ),
        dropdownStyleData: DropdownStyleData(
          maxHeight: 200,
          width: dropdownWidth,
          elevation: 4,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: theme.scaffoldBackgroundColor,
          ),
          padding: const EdgeInsets.only(left: 12, right: 16),
          offset: offset,
        ),
        // icon: Icon(
        //   Icons.arrow_forward_ios_outlined,
        //   color: theme.hintColor,
        // ),
        // iconSize: 14,
        // iconEnabledColor: theme.colorScheme.background,
        // iconDisabledColor: Colors.grey,
        // buttonHeight: buttonHeight,
        // buttonWidth: 140,
        // buttonPadding: const EdgeInsets.only(left: 14, right: 14),
        // buttonDecoration: decoration ??
        //     BoxDecoration(
        //       borderRadius: const BorderRadius.all(Radius.circular(8)),
        //       border: Border.all(
        //         color: theme.colorScheme.primary.withOpacity(0.25),
        //       ),
        //       color: theme.scaffoldBackgroundColor,
        //     ),
        // buttonElevation: 0,
        // itemHeight: 45,
        // itemPadding: const EdgeInsets.only(left: 16, right: 16),
        // dropdownMaxHeight: 235,
        // dropdownWidth: dropdownWidth,
        // dropdownDecoration: BoxDecoration(
        //   borderRadius: const BorderRadius.all(Radius.circular(8)),
        //   color: theme.scaffoldBackgroundColor,
        // ),
        // scrollbarRadius: const Radius.circular(40),
        // scrollbarThickness: 6,
        // scrollbarAlwaysShow: true,
      ),
    );
  }
}
