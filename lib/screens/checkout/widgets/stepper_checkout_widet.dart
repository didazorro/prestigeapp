import 'package:flutter/material.dart';

import '../../../common/constants.dart';

class StepperCheckoutWidget extends StatefulWidget {
  const StepperCheckoutWidget({
    super.key,
    required this.currentStep,
    required this.width,
    required this.items,
  });

  final int currentStep;
  final double width;
  final List<StepperCheckoutItem> items;

  @override
  State<StepperCheckoutWidget> createState() => _StepperCheckoutWidgetState();
}

class _StepperCheckoutWidgetState extends State<StepperCheckoutWidget> {
  late var _indexSelected = widget.currentStep;

  @override
  void didUpdateWidget(covariant StepperCheckoutWidget oldWidget) {
    if (widget.currentStep != oldWidget.currentStep) {
      _indexSelected = widget.currentStep;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    const sizeItem = 30.0;
    const paddingHorizontal = 50.0;
    const sizeTitle = paddingHorizontal * 2 + sizeItem;

    return SizedBox(
      width: widget.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal),
            child: Row(
              children: List.generate(
                widget.items.length,
                (index) => (
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: index <= _indexSelected
                          ? Theme.of(context).primaryColor
                          : null,
                      border: index <= _indexSelected
                          ? null
                          : Border.all(
                              width: 2,
                              color: kGrey400,
                            ),
                    ),
                    padding: const EdgeInsets.all(3),
                    width: sizeItem,
                    height: sizeItem,
                    child: Center(
                      child: index < _indexSelected
                          ? const Icon(
                              Icons.check,
                              color: Colors.white,
                            )
                          : Text(
                              '${index + 1}',
                              style: TextStyle(
                                color: index <= _indexSelected
                                    ? Colors.white
                                    : kGrey400,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                    ),
                  ),
                  index
                ),
              )
                  .expand(
                    (element) => [
                      element.$1,
                      Expanded(
                        child: Divider(
                          endIndent: 5,
                          indent: 5,
                          thickness: 2,
                          color: (element.$2) < _indexSelected
                              ? Theme.of(context).primaryColor
                              : null,
                        ),
                      ),
                    ],
                  )
                  .toList()
                ..removeLast(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              widget.items.length,
              (index) => Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 5),
                  width: sizeTitle,
                  child: Text(
                    widget.items[index].title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            )
                .expand(
                    (element) => [element, const Expanded(child: SizedBox())])
                .toList()
              ..removeLast(),
          ),
        ],
      ),
    );
  }
}

class StepperCheckoutItem {
  final int index;
  final String title;

  StepperCheckoutItem({required this.index, required this.title});
}
