import 'package:flutter/material.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';

class SearchTextFieldWidget extends StatelessWidget {
  const SearchTextFieldWidget({
    this.width = 200,
    this.height = 44,
    required this.controller,
    required this.focusNode,
    super.key,
    this.onFieldSubmitted,
  });

  final double width;
  final double height;
  final TextEditingController controller;
  final FocusNode focusNode;

  final void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300]!,
            ),
            borderRadius: const BorderRadiusDirectional.only(
              topStart: Radius.circular(7),
              bottomStart: Radius.circular(7),
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  focusNode: focusNode,
                  onFieldSubmitted: onFieldSubmitted,
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero.copyWith(bottom: 5),
                    border: InputBorder.none,
                    hintText: S.of(context).searchForItems,
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => onFieldSubmitted?.call(controller.text),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadiusDirectional.only(
                topEnd: Radius.circular(7),
                bottomEnd: Radius.circular(7),
              ),
            ),
            height: height,
            width: height,
            child: Center(
              child: SizedBox(
                height: 44,
                width: 44,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Icon(
                      Icons.search,
                      color: Theme.of(context)
                          .primaryColor
                          .getColorBasedOnBackground,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
