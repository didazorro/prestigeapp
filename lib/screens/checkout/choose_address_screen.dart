import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../common/config.dart';
import '../../common/constants.dart';
import '../../data/boxes.dart';
import '../../generated/l10n.dart';
import '../../models/index.dart' show Address, CartModel, User, UserModel;
import '../../services/index.dart';
import '../index.dart' show BaseScreen;
import 'checkout_feature_flag.dart';
import 'widgets/add_address_widget.dart';
import 'widgets/choose_address_item_widget.dart';

class ChooseAddressArguments {
  final void Function(Address?)? callback;
  final Address? address;
  final bool isModal;

  ChooseAddressArguments({
    this.callback,
    required this.address,
    this.isModal = false,
  });
}

class ChooseAddressScreen extends StatefulWidget {
  final ChooseAddressArguments? arguments;

  const ChooseAddressScreen(this.arguments);

  @override
  BaseScreen<ChooseAddressScreen> createState() => _StateChooseAddress();
}

class _StateChooseAddress extends BaseScreen<ChooseAddressScreen> {
  List<Address?> listAddress = [];
  User? user;
  bool isLoading = true;
  Address? _remoteAddress;
  final ValueNotifier<double?> _sizeCtrl = ValueNotifier(null);

  bool get _isModal => widget.arguments?.isModal ?? false;

  void _loadSizeWidget() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_sizeCtrl.value == null && context.size != null) {
        _sizeCtrl.value = context.size!.width;
      }
    });
  }

  @override
  void afterFirstLayout(BuildContext context) {
    getDataFromLocal();

    final loggedIn = Provider.of<UserModel>(context, listen: false).loggedIn;
    if (loggedIn) {
      getUserInfo().then((_) async {
        await getDataFromNetwork();
        if (mounted) {
          setState(() {
            isLoading = false;
          });
        }
      });
    } else {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  Future<void> getUserInfo() async {
    final localUser = UserBox().userInfo;
    if (localUser != null) {
      final user = await Services().api.getUserInfo(localUser.cookie);
      if (user != null) {
        user.isSocial = localUser.isSocial ?? false;
        setState(() {
          this.user = user;
        });
      }
    }
  }

  void getDataFromLocal() {
    var listData = List<Address>.from(UserBox().addresses);
    final indexRemote =
        listData.indexWhere((element) => element.isShow == false);
    if (indexRemote != -1) {
      _remoteAddress = listData[indexRemote];
    }

    listData.removeWhere((element) => element.isShow == false);
    listAddress = listData;
    setState(() {});
  }

  Future<void> getDataFromNetwork() async {
    try {
      var result = await Services().api.getCustomerInfo(user!.id)!;
      final addressBilling = result['billing'];
      if (addressBilling != null && addressBilling is Address) {
        final listAddressLocal = UserBox().addresses;
        final indexWhere = listAddressLocal
            .indexWhere((element) => element.compareFullInfo(addressBilling));

        if (indexWhere == -1) {
          if (_remoteAddress == null) {
            _remoteAddress = addressBilling;
            listAddressLocal.add(addressBilling);
            listAddress = listAddressLocal;
            UserBox().addresses = listAddressLocal;

            setState(() {});
          }
        } else {
          final item = listAddressLocal[indexWhere];
          _remoteAddress = item;
        }
      }
    } catch (err) {
      printLog(err);
    }
  }

  void removeData(int index, Address addressRemove) {
    var data = UserBox().addresses;
    if (data.isNotEmpty) {
      final indexWhere =
          data.indexWhere((element) => element.compareFullInfo(addressRemove));

      if (indexWhere != -1) {
        if (_remoteAddress?.compareFullInfo(data[indexWhere]) ?? false) {
          data[indexWhere].isShow = false;
        } else {
          data.removeAt(indexWhere);
        }

        UserBox().addresses = data;
      }
    }
    getDataFromLocal();
  }

  void _onEditAddress(Address address) {}

  void _onAddNewAddress() {}

  Widget _renderBillingAddress() {
    if (user == null || user!.billing == null) {
      return const SizedBox();
    }
    final userFullName =
        '${user!.billing!.firstName ?? ''} ${user!.billing!.lastName ?? ''}'
            .trim();
    return GestureDetector(
      onTap: () {
        final add = Address(
            firstName: (user!.billing!.firstName?.isNotEmpty ?? false)
                ? user!.billing!.firstName
                : user!.firstName,
            lastName: (user!.billing!.lastName?.isNotEmpty ?? false)
                ? user!.billing!.lastName
                : user!.lastName,
            email: (user!.billing!.email?.isNotEmpty ?? false)
                ? user!.billing!.email
                : user!.email,
            street: user!.billing!.address1,
            country: user!.billing!.country,
            state: user!.billing!.state,
            phoneNumber: user!.billing!.phone,
            city: user!.billing!.city,
            zipCode: user!.billing!.postCode);
        Provider.of<CartModel>(context, listen: false).setAddress(add);
        if (_isModal == false) {
          Navigator.of(context).pop();
        }
        widget.arguments?.callback?.call(add);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              S.of(context).billingAddress,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(userFullName),
            Text(user!.billing!.phone ?? ''),
            Text(user!.billing!.email ?? ''),
            Text(user!.billing!.address1 ?? ''),
            Text(user!.billing!.city ?? ''),
            Text(user!.billing!.postCode ?? '')
          ],
        ),
      ),
    );
  }

  Widget _renderShippingAddress() {
    if (user == null || user!.shipping == null) return const SizedBox();
    final userFullName =
        '${user!.billing!.firstName ?? ''} ${user!.billing!.lastName ?? ''}'
            .trim();
    return GestureDetector(
      onTap: () {
        final add = Address(
          firstName: (user!.shipping!.firstName?.isNotEmpty ?? false)
              ? user!.shipping!.firstName
              : user!.firstName,
          lastName: (user!.shipping!.lastName?.isNotEmpty ?? false)
              ? user!.shipping!.lastName
              : user!.lastName,
          email: user!.email,
          street: user!.shipping!.address1,
          country: user!.shipping!.country,
          state: user!.shipping!.state,
          city: user!.shipping!.city,
          zipCode: user!.shipping!.postCode,
          phoneNumber: user!.shipping!.phone,
        );
        Provider.of<CartModel>(context, listen: false).setAddress(add);
        if (_isModal == false) {
          Navigator.of(context).pop();
        }
        widget.arguments?.callback?.call(add);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColorLight,
            borderRadius: BorderRadius.circular(10)),
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              S.of(context).shippingAddress,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(userFullName),
            Text(user!.shipping!.address1 ?? ''),
            Text(user!.shipping!.city ?? ''),
            Text(user!.shipping!.postCode ?? '')
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _sizeCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isModal) {
      _loadSizeWidget();
    }

    final itemsAddress = List.generate(listAddress.length, (index) {
      return ChooseAddressItemWidget(
        address: listAddress[index]!,
        isSelected:
            widget.arguments?.address?.compareFullInfo(listAddress[index]!) ??
                false,
        onEdit: CheckoutFeatureFlag.editAddress ? _onEditAddress : null,
        onSelected: (Address address) {
          Provider.of<CartModel>(context, listen: false).setAddress(address);
          if (_isModal == false) {
            Navigator.of(context).pop();
          }
          widget.arguments?.callback?.call(address);
        },
        onRemove: (Address address) {
          removeData(index, address);
        },
      );
    });
    final items = [
      if (_isModal)
        GestureDetector(
          onTap: () {
            widget.arguments?.callback?.call(null);
          },
          behavior: HitTestBehavior.translucent,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(width: 10),
                Text(
                  S.of(context).back,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      _renderBillingAddress(),
      _renderShippingAddress(),
      if (listAddress.isEmpty && !isLoading)
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.6,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  kEmptySearch,
                  width: 120,
                  height: 120,
                ),
                Text(
                  S.of(context).noAddressHaveBeenSaved,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                )
              ],
            ),
          ),
        ),
      if (isLoading)
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.6,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: kLoadingWidget(context),
            ),
          ),
        ),
    ];

    if (_isModal) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...items,
          if (!isLoading)
            ValueListenableBuilder(
              valueListenable: _sizeCtrl,
              builder: (_, widthWidget, __) {
                if (widthWidget == null) {
                  return kLoadingWidget(context);
                }

                return Wrap(
                  children: [
                    ...itemsAddress,
                    if (CheckoutFeatureFlag.addNewAddress)
                      AddAddressWidget(onTap: _onAddNewAddress),
                  ]
                      .map(
                        (e) => SizedBox(
                          width: widthWidget > 600
                              ? widthWidget / 3
                              : widthWidget / 2,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: e,
                          ),
                        ),
                      )
                      .toList(),
                );
              },
            )
        ],
      );
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorLight,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          S.of(context).selectAddress,
          style: TextStyle(color: Theme.of(context).colorScheme.secondary),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...items,
            ...itemsAddress,
          ],
        ),
      ),
    );
  }
}
