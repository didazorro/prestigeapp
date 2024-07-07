import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../common/tools.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart';

mixin PWGiftCardMixin {
  Widget getProductPWGiftCardInfoWidget({
    PWGiftCardInfo? value,
    Function(PWGiftCardInfo)? onChanged,
  }) {
    return PWGiftCardInforWidget(
      value: value,
      onChanged: onChanged,
    );
  }

  Widget renderPWGiftCardInfoCartItem(
    PWGiftCardInfo? value, {
    int? quantity,
    String? price,
  }) {
    if (value == null) const SizedBox();
    return Builder(builder: (context) {
      var emails = value?.to.split(',') ?? [];
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).to,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  emails.join(', '),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).from,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  '${value?.from}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          if (value?.message.isNotEmpty ?? false) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  S.of(context).message,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Text(
                    '${value?.message}',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
          Text.rich(
            TextSpan(
                text: '$quantity x ${PriceTools.getCurrencyFormatted(
              price,
              context.read<AppModel>().currencyRate,
              currency: context.read<CartModel>().currencyCode,
            )}'),
          ),
          const SizedBox(height: 10),
        ],
      );
    });
  }
}

class PWGiftCardInforWidget extends StatefulWidget {
  final PWGiftCardInfo? value;
  final Function(PWGiftCardInfo)? onChanged;
  const PWGiftCardInforWidget({
    this.value,
    this.onChanged,
  });

  @override
  StatePWGiftCardInforWidget createState() => StatePWGiftCardInforWidget();
}

class StatePWGiftCardInforWidget extends State<PWGiftCardInforWidget> {
  final TextEditingController fromController = TextEditingController();
  final TextEditingController toController = TextEditingController();
  final TextEditingController messController = TextEditingController();

  @override
  void initState() {
    super.initState();
    toController.value = TextEditingValue(text: widget.value?.to ?? '');
    messController.value = TextEditingValue(text: widget.value?.message ?? '');
    WidgetsBinding.instance.endOfFrame.then((_) {
      var name = widget.value?.from;
      name ??= context.read<UserModel>().user?.fullName ?? '';
      fromController.value = TextEditingValue(
        text: name,
      );
    });
  }

  @override
  void dispose() {
    fromController.dispose();
    toController.dispose();
    messController.dispose();
    super.dispose();
  }

  void onChanged() {
    widget.onChanged?.call(
      PWGiftCardInfo(
        from: fromController.text,
        to: toController.text,
        message: messController.text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PWGiftCardField(
          title: Text(S.of(context).to),
          description: S.of(context).separateMultipleEmailWithComma,
          controller: toController,
          hintText: S.of(context).enterEmailEachRecipient,
          minLines: 1,
          maxLines: 3,
          onChanged: (value) => onChanged(),
          inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r' |\n'))],
        ),
        const SizedBox(height: 15),
        PWGiftCardField(
          title: Text(S.of(context).from),
          controller: fromController,
          hintText: S.of(context).name,
          onChanged: (value) => onChanged(),
        ),
        const SizedBox(height: 15),
        PWGiftCardField(
          title: Text.rich(
            TextSpan(
              text: S.of(context).message,
              children: [
                const TextSpan(text: ' ('),
                TextSpan(text: S.of(context).optional),
                const TextSpan(text: ')'),
              ],
            ),
          ),
          controller: messController,
          hintText: S.of(context).addMessage,
          maxLines: 3,
          minLines: 1,
          maxLength: 500,
          description: S.of(context).characterRemain('500'),
          onChanged: (value) => onChanged(),
        ),
        const SizedBox(height: 15),
        ValueListenableBuilder(
          valueListenable: toController,
          builder: (context, value, _) {
            var emails = value.text.split(',');
            if (value.text.isNotEmpty) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                    text: S.of(context).quantity,
                    children: [TextSpan(text: ': ${emails.length}')],
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                  )),
                  const SizedBox(height: 2),
                  Text(
                    S.of(context).oneEachRecipient,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ],
    );
  }
}

class PWGiftCardField extends StatefulWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final int? minLines;
  final int? maxLines;
  final Widget? title;
  final String? description;
  final String? hintText;
  final int? maxLength;
  const PWGiftCardField({
    this.controller,
    this.onChanged,
    this.inputFormatters,
    this.minLines,
    this.maxLines,
    this.title,
    this.description,
    this.hintText,
    this.maxLength,
    super.key,
  });

  @override
  StatePWGiftCardField createState() => StatePWGiftCardField();
}

class StatePWGiftCardField extends State<PWGiftCardField> {
  FocusNode focus = FocusNode();
  ValueNotifier<bool> hasFocus = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    focus.addListener(() {
      hasFocus.value = focus.hasFocus;
    });
  }

  @override
  void dispose() {
    focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.title != null) ...[
          widget.title ?? const SizedBox(),
          const SizedBox(height: 2),
        ],
        ValueListenableBuilder<bool>(
          valueListenable: hasFocus,
          builder: (_, value, __) {
            return CupertinoTextField(
              controller: widget.controller,
              maxLength: widget.maxLength,
              focusNode: focus,
              placeholder: widget.hintText,
              style: Theme.of(context).textTheme.bodyMedium,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: value
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).dividerColor,
                  width: 0.7,
                ),
              ),
              minLines: widget.minLines,
              maxLines: widget.maxLines,
              onChanged: widget.onChanged,
              inputFormatters: widget.inputFormatters,
            );
          },
        ),
        if (widget.description?.isNotEmpty ?? false) ...[
          const SizedBox(height: 2),
          Text(
            '${widget.description}',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 12,
                ),
          ),
        ],
      ],
    );
  }
}
