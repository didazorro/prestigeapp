import 'package:flutter/material.dart';

import '../common/config.dart';
import '../data/boxes.dart';
import '../services/index.dart';
import 'entities/branch.dart';

class BranchModel extends ChangeNotifier {
  List<Branch> branches = [];
  String? selected;
  bool loading = true;

  Branch? get branchSelected {
    if (branches.isEmpty) {
      return null;
    }
    return branches.firstWhere(
      (e) => e.id == selected,
      orElse: () => branches.first,
    );
  }

  BranchModel() {
    init();
  }

  Future<void> init() async {
    if (kBranchConfig.enable) {
      selected = CacheBox().getCurrentBranchCache()?.toString();
      await getAllBranches();
    }
    loading = false;
    notifyListeners();
  }

  void onSelected(Branch value) {
    selected = value.id;
    CacheBox().setCurrentBranchCache(int.tryParse(value.id));
    notifyListeners();
  }

  Future<void> getAllBranches() async {
    branches = await Services().api.getAllBranches();
    notifyListeners();
  }
}
