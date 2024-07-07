import 'dart:async';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:provider/provider.dart';

import '../../../../models/index.dart' show AppModel;
import '../../../common/constants.dart';
import '../../../common/events.dart';
import '../../../models/vendor/store_model.dart';
import '../../../screens/base_screen.dart';
import '../../../screens/search/widgets/search_box.dart';
import './layouts/card.dart';
import './layouts/column.dart';
import './layouts/grid.dart';

class StoreScreen extends StatefulWidget {
  @override
  BaseScreen<StoreScreen> createState() => _StoresState();
}

class _StoresState extends BaseScreen<StoreScreen> {
  String _currentSearchName = '';
  late StoreModel storeModel;
  StreamSubscription? _subAppCookieExpiry;
  FocusNode? _focusNode;
  late StreamSubscription<bool> _keyboardSubscription;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _keyboardSubscription =
        KeyboardVisibilityController().onChange.listen((bool visible) {
      if (!visible) {
        _focusNode?.unfocus();
      }
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    storeModel = Provider.of<StoreModel>(context, listen: false);
    storeModel.refreshStore();

    _subAppCookieExpiry = eventBus.on<EventExpiredCookie>().listen((event) {
      storeModel.refreshStore();
    });
  }

  @override
  void dispose() {
    _subAppCookieExpiry?.cancel();
    _focusNode?.dispose();
    _keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context, listen: false);
    final vendorLayout = appModel.vendorLayout;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 2),
          child: SearchBox(
            showCancelButton: false,
            focusNode: _focusNode,
            onChanged: (val) {
              EasyDebounce.debounce(
                  'searchStoreScreen', const Duration(milliseconds: 300), () {
                setState(() {
                  _currentSearchName = val;
                });
                storeModel.loadStore(name: _currentSearchName);
              });
            },
            onCancel: () {
              setState(() {
                _currentSearchName = '';
              });
              storeModel.loadStore(name: _currentSearchName);
            },
          ),
        ),
        Expanded(
          child: renderStores(vendorLayout),
        ),
      ],
    );
  }

  Widget renderStores(String? layout) {
    switch (layout) {
      case 'column':
        return ColumnStores(searchName: _currentSearchName);
      case 'grid':
        return GridStores(searchName: _currentSearchName);
      case 'card':
      default:
        return CardStores(searchName: _currentSearchName);
    }
  }
}
