import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

mixin OverlayMixin<T extends StatefulWidget> on State<T> {
  OverlayEntry? _overlayEntry;
  GlobalKey? get globalKeyOverlay;
  double? get widthDialog => null;
  double? get heightDialog => null;

  double? get offsetLeft => null;
  double? get offsetRight => null;
  double? get offsetTop => null;
  double? get offsetBottom => null;

  double? get positionStart => null;
  double? get positionEnd => null;

  Widget get bodyOverlay;
  bool get showRegionPop => true;
  bool get isShowOverlay => _overlayEntry != null;
  var _size = const Size(0, 0);

  void checkSizeToHideOverlay() {
    final sizeScreen = MediaQuery.sizeOf(context);
    final widthScreen = sizeScreen.width;
    final heightScreen = sizeScreen.height;

    EasyDebounce.debounce(
        'checkContrains-$hashCode', const Duration(milliseconds: 100), () {
      final isChangeConstrain =
          widthScreen != _size.width || heightScreen != _size.height;

      if (isChangeConstrain && isShowOverlay) {
        hideOverlay();
      }
      _size = sizeScreen;
    });
  }

  void showOverlay([BuildContext? ct]) {
    if (_overlayEntry == null) {
      _overlayEntry = _buildEntry(ct);
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      Future.delayed(const Duration(milliseconds: 1000)).then((value) {
        hideOverlay();
        showOverlay(ct);
      });
    }
  }

  void hideOverlay({String? debugLabel}) {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _buildEntry([BuildContext? ct]) {
    final width = MediaQuery.sizeOf(ct ?? context).width;
    final height = MediaQuery.sizeOf(ct ?? context).height;

    final widthOverlay = widthDialog ?? width;
    final heightOverlay = heightDialog ?? 200;
    final box =
        globalKeyOverlay!.currentContext!.findRenderObject() as RenderBox;
    final sizeWidget = box.size;

    final posWidget = box.localToGlobal(Offset.zero);
    final pos = Offset(
      posWidget.dx > width ? width : posWidget.dx,
      posWidget.dy > width ? width : posWidget.dy,
    );

    var left = pos.dx;
    var right = 0.0;
    var maxWidth = widthOverlay;
    var maxHeight = heightOverlay;
    if (left + widthOverlay > width) {
      left = 0;
      right = width - pos.dx - sizeWidget.width;
    }

    if (right + widthOverlay > width) {
      if (right > pos.dx) {
        right = 0.0;
        left = pos.dx;
        final w = width - pos.dx - sizeWidget.width;
        maxWidth = w < maxWidth ? w : maxWidth;
      } else {
        final w = width - right - sizeWidget.width;
        maxWidth = w < maxWidth ? w : maxWidth;
      }
    }

    var top = pos.dy + 60;
    var bottom = 0.0;
    if (height - top < maxHeight) {
      bottom = height - pos.dy + 10;

      if (pos.dy - 10 < maxHeight) {
        maxHeight = pos.dy - 60;
      }
      top = 0;
    } else {
      if ((height - top) < maxHeight) {
        maxHeight = height - pos.dy - 10;
      }
    }

    return OverlayEntry(
      builder: (BuildContext context) {
        return Stack(
          children: <Widget>[
            if (showRegionPop)
              GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => hideOverlay(debugLabel: 'actionEntry'),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            Positioned(
              top: top == 0 ? offsetTop : (top + (offsetTop ?? 0)),
              left: positionStart ??
                  (left == 0 ? offsetLeft : (left + (offsetLeft ?? 0))),
              right: positionEnd ??
                  (right == 0 ? offsetRight : (right + (offsetRight ?? 0))),
              bottom:
                  bottom == 0 ? offsetBottom : (bottom + (offsetBottom ?? 0)),
              child: bodyOverlay,
            ),
          ],
        );
      },
    );
  }
}
