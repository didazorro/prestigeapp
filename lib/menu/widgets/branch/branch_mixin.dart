import 'package:flutter/material.dart';

import '../../../common/config.dart';
import '../../../data/boxes.dart';
import 'branch_overlay.dart';

mixin BranchMixin<T extends StatefulWidget> on State<T> {
  OverlayEntry? branchEntry;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.endOfFrame.then((_) {
      if (mounted) {
        var currentBranch = CacheBox().getCurrentBranchCache();
        if (kBranchConfig.enable && currentBranch == null) {
          branchEntry = OverlayEntry(builder: (context) {
            return BranchOverlay(onClose: onClose);
          });
          Overlay.of(context).insert(branchEntry!);
        }
      }
    });
  }

  void onClose() {
    branchEntry?.remove();
    branchEntry?.dispose();
    branchEntry = null;
  }

  @override
  void dispose() {
    onClose();
    super.dispose();
  }
}
