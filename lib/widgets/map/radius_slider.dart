import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class RadiusSlider extends StatefulWidget {
  final Function(double)? onCallBack;
  final void Function()? moveToCurrentPos;
  final double? minRadius;
  final double? maxRadius;
  final double? currentVal;
  final Decoration? decoration;

  const RadiusSlider({
    super.key,
    this.onCallBack,
    this.minRadius,
    this.maxRadius,
    this.currentVal,
    this.moveToCurrentPos,
    this.decoration,
  });

  @override
  State<RadiusSlider> createState() => _RadiusSliderState();
}

class _RadiusSliderState extends State<RadiusSlider> {
  double? currentVal;

  @override
  void initState() {
    currentVal = widget.currentVal;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(right: 20.0),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: widget.decoration ??
          BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Theme.of(context).cardColor,
          ),
      child: Row(
        children: [
          Flexible(
            child: Slider(
              max: widget.maxRadius!,
              min: widget.minRadius!,
              onChanged: (double value) {
                currentVal = value;
                widget.onCallBack!(value);
              },
              value: currentVal!,
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey.withOpacity(0.6)),
            child: Text(
              S.of(context).distance(currentVal!.toStringAsFixed(2)),
              style: Theme.of(context).textTheme.bodyLarge!,
            ),
          ),
          if (widget.moveToCurrentPos != null) const SizedBox(width: 10),
          if (widget.moveToCurrentPos != null)
            InkWell(
              onTap: widget.moveToCurrentPos,
              child: const Icon(
                Icons.my_location_outlined,
                color: Colors.grey,
                size: 36.0,
              ),
            ),
        ],
      ),
    );
  }
}
