import 'package:flutter/material.dart';

import '../../../../../common/config/models/product_detail_config.dart';
import '../../../../../common/constants.dart';
import '../../../../../generated/l10n.dart';

class OptionSelection extends StatelessWidget {
  final List<String?> options;
  final String? value;
  final String? title;
  final Function? onChanged;
  final ProductDetailAttributeLayout? layout;

  const OptionSelection({
    required this.options,
    required this.value,
    this.title,
    this.layout,
    this.onChanged,
  });

  // ignore: always_declare_return_types
  showOptions(context) {
    showModalBottomSheet(
      context: context,
      // https://github.com/inspireui/support/issues/4814#issuecomment-684179116
      isScrollControlled: true,
      builder: (BuildContext context) {
        return DraggableScrollableSheet(
          expand: false,
          maxChildSize: 0.85,
          initialChildSize: 0.5,
          snap: true,
          snapSizes: const [
            0.5,
            0.85,
          ],
          minChildSize: 0.25,
          builder: (BuildContext context, ScrollController scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      S.of(context).selectTheSize,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.8),
                          ),
                    ),
                  ),
                  const Divider(height: 1, indent: 20, endIndent: 20),
                  for (final option in options)
                    ListTile(
                      onTap: () {
                        onChanged!(option);
                        Navigator.pop(context);
                      },
                      title: Text(
                        option!.replaceAll('&amp;', '&'),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final layoutIsWeb = layout?.isWeb ?? false;

    return GestureDetector(
      onTap: layoutIsWeb ? null : () => showOptions(context),
      // Sometime, it's too hard to click dropdown for attribute
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: 42,
        child: Row(
          mainAxisAlignment:
              layoutIsWeb ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: <Widget>[
            if (layoutIsWeb) ...[
              Text(
                title?.capitalize() ?? '',
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(
                    color: kGrey200,
                  ),
                ),
                child: DropdownButton(
                  value: value,
                  elevation: 1,
                  isDense: true,
                  enableFeedback: false,
                  underline: const SizedBox(),
                  items: options
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Text(
                              e!.replaceAll('&amp;', '&'),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    onChanged!(value);
                  },
                ),
              ),
            ] else ...[
              Expanded(
                child: Text(
                  title?.capitalize() ?? '',
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                value!,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 13,
                ),
              ),
              const SizedBox(width: 5),
              const Icon(Icons.keyboard_arrow_down, size: 16, color: kGrey600)
            ]
          ],
        ),
      ),
    );
  }
}
