import 'dart:math';

import 'package:flutter/material.dart';

typedef IndexedFlexWidgetBuilder = Widget Function(int index);

/// A custom Flutter widget that extends the [Flex] widget.
///
/// It's designed to display multiple children with a specified
/// separation size between them.
class FlexSeparated extends Flex {
  /// This parameter is used to add an [Expanded] widget to the children list.
  final bool addExpanded;

  /// Constructor for creating a [FlexSeparated] widget.
  ///
  /// This constructor takes in parameters for [Flex] settings, a
  /// list of child widgets,
  /// and a separation size. It also modifies the given children list
  ///  by adding [SizedBox] in-between widgets.
  FlexSeparated({
    this.addExpanded = false,
    super.key,
    super.mainAxisAlignment,
    super.mainAxisSize,
    super.crossAxisAlignment,
    super.textDirection,
    super.verticalDirection,
    super.textBaseline,
    required super.direction,
    required double separationSize,
    required List<Widget> children,
  }) : super(
          children: List.generate(
            max(children.length * 2 - 1, 0),
            (index) {
              if (index.isEven) {
                if (addExpanded) {
                  return Expanded(child: children[index ~/ 2]);
                }

                return children[index ~/ 2];
              } else {
                return SizedBox(
                  width: direction == Axis.horizontal ? separationSize : null,
                  height: direction == Axis.vertical ? separationSize : null,
                );
              }
            },
          ),
        );

  /// Factory constructor for creating a horizontal
  ///  [FlexSeparated] widget (Row).
  factory FlexSeparated.row({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    bool addExpanded = false,
    required double separationSize,
    required List<Widget> children,
  }) =>
      FlexSeparated(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        direction: Axis.horizontal,
        separationSize: separationSize,
        addExpanded: addExpanded,
        children: children,
      );

  /// Factory constructor for creating a vertical
  /// [FlexSeparated] widget (Column).
  factory FlexSeparated.column({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    bool addExpanded = false,
    required double separationSize,
    required List<Widget> children,
  }) =>
      FlexSeparated(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        direction: Axis.vertical,
        separationSize: separationSize,
        addExpanded: addExpanded,
        children: children,
      );

  factory FlexSeparated.rowBuilder({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    bool addExpanded = false,
    required double separationSize,
    required int itemCount,
    required IndexedFlexWidgetBuilder itemBuilder,
  }) {
    return FlexSeparated(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      direction: Axis.horizontal,
      separationSize: separationSize,
      addExpanded: addExpanded,
      children: List.generate(
        itemCount,
        (index) => itemBuilder(index),
      ),
    );
  }

  factory FlexSeparated.columnBuilder({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    bool addExpanded = false,
    required double separationSize,
    required int itemCount,
    required IndexedFlexWidgetBuilder itemBuilder,
  }) {
    return FlexSeparated(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      direction: Axis.vertical,
      separationSize: separationSize,
      addExpanded: addExpanded,
      children: List.generate(
        itemCount,
        (index) => itemBuilder(index),
      ),
    );
  }
}
