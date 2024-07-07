import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';
import '../../models/entities/branch.dart';
import '../../models/index.dart';
import '../../services/services.dart';
import '../base_screen.dart';
import '../common/app_bar_mixin.dart';

class BranchesScreen extends StatefulWidget {
  const BranchesScreen();

  @override
  BaseScreen<BranchesScreen> createState() => _BranchesScreenState();
}

class _BranchesScreenState extends BaseScreen<BranchesScreen> with AppBarMixin {
  BranchModel get model => context.read<BranchModel>();
  List<Branch> get branches => model.branches;
  ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<void> onSelected(Branch value) async {
    if (model.selected == value.id) return;
    final appModel = context.read<AppModel>();
    final categoryModel = context.read<CategoryModel>();
    final cartModel = context.read<CartModel>();
    final userModel = context.read<UserModel>();
    cartModel.clearCart();
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
    try {
      if (userModel.user != null) {
        cartModel.setUser(userModel.user);
      }
      await Services().api.syncCartToWebsite(cartModel, userModel.user);
    } catch (e) {
      printLog(e.toString());
    }
    await showWarningDialog();
    isLoading.value = false;
    context.navigator.pop();
  }

  Future<void> showWarningDialog() async {
    await showDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) {
        return AlertDialog(
          content: Text(S.of(context).branchChangeWarning),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Text(
                    S.of(context).ok,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    isLoading.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return renderScaffold(
      routeName: RouteList.branchSelecter,
      child: MediaQuery(
        data: MediaQuery.of(context).copyWith(
          padding: showAppBar(RouteList.currencies) ? EdgeInsets.zero : null,
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              S.of(context).branch,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            leading: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          body: Selector<BranchModel, Branch?>(
            selector: (context, model) => model.branchSelected,
            builder: (_, value, __) {
              return ValueListenableBuilder(
                valueListenable: isLoading,
                builder: (_, loading, __) {
                  return ListView.separated(
                    itemCount: branches.length,
                    separatorBuilder: (_, __) => const Divider(
                      color: Colors.black12,
                      height: 1.0,
                      indent: 75,
                    ),
                    itemBuilder: (_, index) {
                      final branch = branches[index];
                      return buildItem(
                        branch,
                        isSelected: value?.id == branch.id,
                        loading: loading,
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildItem(
    Branch value, {
    bool isSelected = false,
    bool loading = false,
  }) {
    Widget icon = const SizedBox(width: 20);
    if (isSelected) {
      icon = Icon(
        Icons.done,
        color: Theme.of(context).primaryColor,
      );
      if (loading) {
        icon = SizedBox(
          width: 20,
          height: 20,
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
            strokeWidth: 2,
          ),
        );
      }
    }

    return IgnorePointer(
      ignoring: loading,
      child: Card(
        elevation: 0,
        margin: EdgeInsets.zero,
        child: ListTile(
          title: Text(value.name),
          onTap: () => onSelected(value),
          trailing: icon,
        ),
      ),
    );
  }
}
