import 'dart:async';

import 'package:flutter/cupertino.dart';

import '../common/constants.dart';
import '../common/events.dart';
import '../modules/dynamic_layout/config/bottom_bar_style.dart';

// If the screen is in this list, the bottom bar will not be active
const _excludeScreens = <String>[
  RouteList.cart,
  RouteList.videos,
];

const _kMinOpacity = 0.2;
const _kMaxOpacity = 1.0;

const _kDefaultOffset = Offset(0, 0);
const _kMaxOffset = Offset(0, 2);

/// This class is used to control the status of the bottom bar work like App X
class BottomBarModel with ChangeNotifier {
  BottomBarModel(BottomBarStyle? style)
      : _bottomBarStyle = style ?? BottomBarStyle.defaultValue {
    if (!_isNormalStyle) {
      _subscribeToEventScreenChanged();
    }
  }

  bool _isActive = false;
  double _opacity = _kMaxOpacity;
  Offset _offset = _kDefaultOffset;
  final BottomBarStyle _bottomBarStyle;

  StreamSubscription<EventScreenChanged>? _subscription;

  bool get _isNormalStyle => _bottomBarStyle.isNormal;

  bool get isActive => _isActive;

  double get opacity => _isNormalStyle ? _kMaxOpacity : _opacity;

  Offset get offset =>
      _bottomBarStyle.isSlideEffect ? _offset : _kDefaultOffset;

  void _subscribeToEventScreenChanged() {
    _subscription = eventBus.on<EventScreenChanged>().listen((event) {
      final screenName = event.screenName;
      if (screenName != null && !_excludeScreens.contains(screenName)) {
        _isActive = true;
      } else {
        _isActive = false;
      }
      notifyListeners();
    });
  }

  void active() {
    _isActive = true;
    activeOpacityAndSlide();
    notifyListeners();
  }

  void deactive() {
    _isActive = false;
    notifyListeners();
  }

  void activeOpacityAndSlide() {
    _opacity = _kMaxOpacity;
    _offset = _kDefaultOffset;
    notifyListeners();
  }

  void deactiveOpacityAndSlide() {
    _opacity = _kMinOpacity;
    _offset = _kMaxOffset;
    notifyListeners();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
