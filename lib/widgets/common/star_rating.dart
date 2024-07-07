import 'package:flutter/material.dart';

import '../../common/config.dart';
import '../../common/constants.dart';

typedef RatingChangeCallback = void Function(double rating);

class SmoothStarRating extends StatelessWidget {
  final int starCount;
  final double _rating;
  final RatingChangeCallback? onRatingChanged;
  final Color? color;
  final Color? borderColor;
  final double? size;
  final bool allowHalfRating;
  final double spacing;
  final Widget? label;
  final MainAxisAlignment mainAxisAlignment;

  final bool _hideEmptyRating;

  SmoothStarRating({
    this.starCount = 5,
    double? rating,
    this.onRatingChanged,
    this.color,
    this.borderColor,
    this.size,
    this.spacing = 0.0,
    this.label,
    this.allowHalfRating = true,
    this.mainAxisAlignment = MainAxisAlignment.start,
    bool? hideEmptyRating,
  })  : _hideEmptyRating = hideEmptyRating ?? kAdvanceConfig.hideEmptyRating,
        _rating = rating ?? 0.0;

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= _rating) {
      icon = Icon(
        Icons.star_border,
        color: borderColor ?? kColorRatingStar,
        size: size ?? 25.0,
      );
    } else if (index > _rating - (allowHalfRating ? 1.0 : 0.5) &&

        /// seem nonsense but it works :)
        index < _rating) {
      icon = Icon(
        Icons.star_half,
        color: color ?? kColorRatingStar,
        size: size ?? 25.0,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color ?? kColorRatingStar,
        size: size ?? 25.0,
      );
    }

    if (onRatingChanged == null) {
      return icon;
    }

    return GestureDetector(
      onTap: () {
        if (onRatingChanged != null) {
          onRatingChanged!(index + 1.0);
        }
      },
      onHorizontalDragUpdate: (dragDetails) {
        var box = context.findRenderObject() as RenderBox;
        final pos = box.globalToLocal(dragDetails.globalPosition);
        final i = pos.dx / size!;
        var newRating = allowHalfRating ? i : i.round().toDouble();
        if (newRating > starCount) {
          newRating = starCount.toDouble();
        }
        if (newRating < 0) {
          newRating = 0.0;
        }
        if (onRatingChanged != null) {
          onRatingChanged!(newRating);
        }
      },
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_hideEmptyRating && _rating == 0 && onRatingChanged == null) {
      return const SizedBox();
    }

    if (label == null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(starCount, (index) => buildStar(context, index))
          ..add(SizedBox(width: spacing)),
      );
    }

    return Row(
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Wrap(
          alignment: WrapAlignment.start,
          spacing: spacing,
          children:
              List.generate(starCount, (index) => buildStar(context, index)),
        ),
        const SizedBox(width: 4),
        label!,
      ],
    );
  }
}
