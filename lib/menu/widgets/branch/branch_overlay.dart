import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/config.dart';
import '../../../generated/l10n.dart';
import '../../../models/entities/branch.dart';
import '../../../models/index.dart';
import 'branch_item.dart';

class BranchOverlay extends StatefulWidget {
  final Function() onClose;
  const BranchOverlay({required this.onClose});

  @override
  StateBranchOverlay createState() => StateBranchOverlay();
}

class StateBranchOverlay extends State<BranchOverlay> {
  BranchModel get model => context.read<BranchModel>();
  ValueNotifier<Branch?> branchSelected = ValueNotifier(null);
  ValueNotifier<bool> isLoading = ValueNotifier(false);
  final GlobalKey<ScaffoldMessengerState> scaffoldMess =
      GlobalKey<ScaffoldMessengerState>();

  void onClose() {
    if (model.branches.isNotEmpty) {
      model.onSelected(model.branches.first);
    }
    widget.onClose();
  }

  Future<void> onOke() async {
    final value = branchSelected.value;
    if (value == null) {
      scaffoldMess.currentState?.showSnackBar(
        SnackBar(
            content: Text(
          S.of(context).pleaseChooseBranch,
        )),
      );
      return;
    }
    final appModel = context.read<AppModel>();
    final categoryModel = context.read<CategoryModel>();
    model.onSelected(value);
    isLoading.value = true;
    unawaited(appModel.loadAppConfig());
    categoryModel.refreshCategoryList();
    unawaited(
      categoryModel.getCategories(
        lang: appModel.langCode,
        sortingList: appModel.categories,
        categoryLayout: appModel.categoryLayout,
        remapCategories: appModel.remapCategories,
      ),
    );
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
    widget.onClose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Selector<BranchModel, bool>(
      selector: (context, model) => model.loading,
      builder: (_, value, __) {
        var branches = model.branches;
        return ScaffoldMessenger(
          key: scaffoldMess,
          child: Scaffold(
            backgroundColor: Theme.of(context).hintColor,
            body: Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: onClose,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).dividerColor,
                          ),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: const Icon(CupertinoIcons.clear, size: 14),
                      ),
                    ),
                    Center(
                      child: Text(
                        S.of(context).chooseBranch,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                    const SizedBox(height: 20),
                    value
                        ? Padding(
                            padding: const EdgeInsets.all(10),
                            child: kLoadingWidget(context),
                          )
                        : ValueListenableBuilder<Branch?>(
                            valueListenable: branchSelected,
                            builder: (context, branch, _) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Wrap(
                                  spacing: 10,
                                  runSpacing: 10,
                                  children: List.generate(
                                    branches.length,
                                    (index) {
                                      var item = branches[index];
                                      return BranchItem(
                                        item,
                                        isSelected: branch?.id == item.id,
                                        onTap: () =>
                                            branchSelected.value = item,
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                    const SizedBox(height: 30),
                    ValueListenableBuilder<bool>(
                      valueListenable: isLoading,
                      builder: (context, value, _) {
                        final textColor = primaryColor.computeLuminance() > 0.5
                            ? Colors.black
                            : Colors.white;
                        return Center(
                          child: InkWell(
                            onTap: onOke,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(3),
                              ),
                              child: value
                                  ? SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        color: textColor,
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : Text(
                                      S.of(context).ok,
                                      style: TextStyle(
                                        color: textColor,
                                      ),
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
