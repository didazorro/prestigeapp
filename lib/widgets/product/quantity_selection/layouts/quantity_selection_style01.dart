import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/constants.dart';
import '../quantity_selection.dart';
import '../quantity_selection_state_ui.dart';

class QuantitySelectionStyle01 extends StatelessWidget {
  const QuantitySelectionStyle01(
    this.stateUI, {
    super.key,
    this.onShowOption,
    required this.style,
  });

  final QuantitySelectionStateUI stateUI;
  final QuantitySelectionStyle style;
  final void Function()? onShowOption;

  @override
  Widget build(BuildContext context) {
    final heightItem = stateUI.height;

    final iconPadding = EdgeInsets.all(
      max(
        ((heightItem) - 24.0 - 8) * 0.5,
        0.0,
      ),
    );
    final enableTextBox = stateUI.enabled == true && stateUI.enabledTextBox;

    final textField = TextField(
      textAlignVertical: TextAlignVertical.center,
      focusNode: stateUI.focusNode,
      readOnly: stateUI.enabled == false || stateUI.enabledTextBox == false,
      enabled: enableTextBox,
      controller: stateUI.textController,
      maxLines: 1,
      maxLength: '${stateUI.limitSelectQuantity}'.length,
      onChanged: (_) => stateUI.onQuantityChanged(),
      onSubmitted: (_) => stateUI.onQuantityChanged(),
      decoration: const InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        counterText: '',
        isDense: true, // Required for text centering
      ),
      keyboardType: const TextInputType.numberWithOptions(
        signed: true,
        decimal: false,
      ),
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      textAlign: TextAlign.center,
    );

    if (style == QuantitySelectionStyle.style03) {
      return _QuantitySelectionLayout02(
        enabled: stateUI.enabled,
        expanded: stateUI.expanded,
        heightItem: heightItem,
        paddingIcon: iconPadding,
        textfield: textField,
        onShowOption: enableTextBox ? null : onShowOption,
        width: stateUI.width,
        onAddValue: () {
          if (stateUI.focusNode?.hasFocus ?? false) {
            stateUI.focusNode?.unfocus();
          }
          stateUI.changeQuantity(stateUI.currentQuantity + 1);
        },
        onSubValue: () {
          if (stateUI.focusNode?.hasFocus ?? false) {
            stateUI.focusNode?.unfocus();
          }
          stateUI.changeQuantity(stateUI.currentQuantity - 1);
        },
      );
    }

    return _QuantitySelectionLayout01(
      enabled: stateUI.enabled,
      expanded: stateUI.expanded,
      heightItem: heightItem,
      paddingIcon: iconPadding,
      textfield: textField,
      onShowOption: enableTextBox ? null : onShowOption,
      width: stateUI.width,
      onAddValue: () {
        if (stateUI.focusNode?.hasFocus ?? false) {
          stateUI.focusNode?.unfocus();
        }
        stateUI.changeQuantity(stateUI.currentQuantity + 1);
      },
      onSubValue: () {
        if (stateUI.focusNode?.hasFocus ?? false) {
          stateUI.focusNode?.unfocus();
        }
        stateUI.changeQuantity(stateUI.currentQuantity - 1);
      },
    );
  }
}

class _QuantitySelectionLayout01 extends StatelessWidget {
  const _QuantitySelectionLayout01({
    required this.textfield,
    required this.onSubValue,
    required this.onAddValue,
    required this.enabled,
    required this.heightItem,
    required this.expanded,
    this.paddingIcon,
    this.width,
    this.onShowOption,
  });

  final Widget textfield;
  final void Function() onSubValue;
  final void Function() onAddValue;
  final bool enabled;
  final bool expanded;
  final double heightItem;
  final EdgeInsetsGeometry? paddingIcon;
  final double? width;
  final void Function()? onShowOption;

  @override
  Widget build(BuildContext context) {
    final textFieldWidget = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onShowOption,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        width: expanded == true ? null : width,
        height: heightItem,
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: kGrey200),
          borderRadius: BorderRadius.circular(6),
        ),
        alignment: Alignment.center,
        child: Center(child: textfield),
      ),
    );

    return Row(
      children: [
        enabled == true
            ? Container(
                height: heightItem,
                width: heightItem,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: IconButton(
                  padding: paddingIcon,
                  onPressed: onSubValue,
                  icon: Icon(
                    Icons.remove,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            : const SizedBox.shrink(),
        expanded == true ? Expanded(child: textFieldWidget) : textFieldWidget,
        enabled == true
            ? Container(
                height: heightItem,
                width: heightItem,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: IconButton(
                  padding: paddingIcon,
                  onPressed: onAddValue,
                  icon: Icon(
                    Icons.add,
                    size: 18,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}

class _QuantitySelectionLayout02 extends StatelessWidget {
  const _QuantitySelectionLayout02({
    required this.textfield,
    required this.onSubValue,
    required this.onAddValue,
    required this.enabled,
    required this.heightItem,
    required this.expanded,
    this.paddingIcon,
    this.width,
    this.onShowOption,
  });

  final Widget textfield;
  final bool enabled;
  final bool expanded;
  final double heightItem;
  final EdgeInsetsGeometry? paddingIcon;
  final double? width;
  final void Function() onSubValue;
  final void Function() onAddValue;
  final void Function()? onShowOption;

  @override
  Widget build(BuildContext context) {
    final textFieldWidget = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onShowOption,
      child: Container(
        padding: const EdgeInsets.only(bottom: 2),
        width: expanded == true ? null : width,
        decoration: const BoxDecoration(
          border: Border(
            left: BorderSide(width: 1.0, color: kGrey200),
            right: BorderSide(width: 1.0, color: kGrey200),
          ),
        ),
        alignment: Alignment.center,
        child: textfield,
      ),
    );

    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: kGrey200),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          enabled == true
              ? SizedBox(
                  height: heightItem,
                  width: heightItem,
                  child: IconButton(
                    padding: paddingIcon,
                    onPressed: onSubValue,
                    icon: const Icon(Icons.remove, size: 18),
                  ),
                )
              : const SizedBox.shrink(),
          expanded == true ? Expanded(child: textFieldWidget) : textFieldWidget,
          enabled == true
              ? SizedBox(
                  height: heightItem,
                  width: heightItem,
                  child: IconButton(
                    padding: paddingIcon,
                    onPressed: onAddValue,
                    icon: const Icon(Icons.add, size: 18),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
