import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../common/config.dart';
import '../../../common/extensions/num_ext.dart';
import '../../../common/tools.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart'
    show CartModel, PointModel, AppModel, UserModel;
import '../../../widgets/product/cart_item/cart_item_state_ui.dart';

class PointReward extends StatefulWidget {
  final CartStyle cartStyle;

  const PointReward({this.cartStyle = CartStyle.normal});

  @override
  State<PointReward> createState() => _PointRewardState();
}

class _PointRewardState extends State<PointReward> {
  bool applied = false;
  int appliedPoints = 0;

  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void applyPoints(PointModel pointModel, CartModel cartModel) {
    if (!applied) {
      setState(() {
        appliedPoints = int.tryParse(controller.text) ?? 0;
      });
    }

    if (pointModel.point == null || pointModel.cartPointsRate.isNullOrZero) {
      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).pointMsgConfigNotFound);
      return;
    }

    if (appliedPoints == 0) {
      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).pointMsgEnter);
      return;
    }

    if (!applied) {
      if (appliedPoints > (pointModel.point?.points ?? 0)) {
        Tools.showSnackBar(ScaffoldMessenger.of(context),
            '${S.of(context).pointMsgNotEnough} : ${(pointModel.point?.points ?? 0)}');
        return;
      }

      if (appliedPoints > (pointModel.maxPointDiscount ?? 0)) {
        Tools.showSnackBar(ScaffoldMessenger.of(context),
            '${S.of(context).pointMsgOverMaximumDiscountPoint}. ${S.of(context).pointMsgMaximumDiscountPoint} : ${pointModel.maxPriceDiscount}');
        return;
      }

      var appliedPriceDiscount = appliedPoints *
          pointModel.cartPriceRate! /
          pointModel.cartPointsRate!;

      if (appliedPriceDiscount > (cartModel.getTotal() ?? 0)) {
        Tools.showSnackBar(ScaffoldMessenger.of(context),
            S.of(context).pointMsgOverMaximumDiscountPoint);
        return;
      }

      setPointDiscount(pointModel, cartModel);
      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).pointMsgSuccess);
    } else {
      cartModel.setRewardTotal(0);
      setState(() {
        appliedPoints = 0;
      });

      Tools.showSnackBar(
          ScaffoldMessenger.of(context), S.of(context).pointMsgRemove);
    }

    setState(() {
      applied = !applied;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currency = Provider.of<AppModel>(context).currency;
    final currencyRate = Provider.of<AppModel>(context).currencyRate;

    final pointModel = Provider.of<PointModel>(context);
    final cartModel = Provider.of<CartModel>(context);

    return ListenableProvider.value(
      value: pointModel,
      child: Consumer<PointModel>(builder: (context, model, child) {
        final resultUpdate = updateMaxPointDiscount(pointModel, cartModel);

        if (resultUpdate == false) {
          return const SizedBox();
        }

        final points = model.point?.points ?? 0;

        return Container(
          decoration: widget.cartStyle.isStyle01
              ? BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(5),
                )
              : null,
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).pointRewardMessage),
              const SizedBox(height: 5.0),
              Text(
                S.of(context).convertPoint(
                      PriceTools.getCurrencyFormatted(
                        model.cartPriceRate,
                        currencyRate,
                        currency: currency,
                      ).toString(),
                      model.cartPointsRate.toString(),
                    ),
              ),
              const SizedBox(height: 5.0),
              Text(
                S.of(context).useMaximumPointDiscount(
                      model.maxPointDiscount.toString(),
                      PriceTools.getCurrencyFormatted(
                        model.maxPriceDiscount,
                        currencyRate,
                        currency: kAdvanceConfig.defaultCurrency?.currencyCode,
                      ).toString(),
                    ),
              ),
              const SizedBox(height: 5.0),
              Row(
                children: [
                  Expanded(
                    child: PointSelection(
                      controller: controller,
                      enabled: applied == false,
                      limit: points,
                      value: int.tryParse(controller.text) ?? 0,
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).primaryColor,
                      backgroundColor: Theme.of(context).primaryColorLight,
                      elevation: 0.0,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                    ),
                    label: Text(
                        applied ? S.of(context).remove : S.of(context).apply),
                    icon: const Icon(
                      CupertinoIcons.checkmark_seal_fill,
                      size: 18,
                    ),
                    onPressed: () {
                      applyPoints(pointModel, cartModel);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              Text(S.of(context).availablePoints(points)),
            ],
          ),
        );
      }),
    );
  }

  // Update maxPointDiscount when cart add or remove product
  bool updateMaxPointDiscount(PointModel? pointModel, CartModel cartModel) {
    final userModel = Provider.of<UserModel>(context, listen: false);

    if (pointModel == null ||
        (pointModel.point?.points.isNullOrZero ?? true) ||
        (userModel.user?.cookie?.isEmpty ?? true) ||
        pointModel.cartPriceRate.isNullOrZero ||
        pointModel.cartPointsRate.isNullOrZero) {
      return false;
    }
    var rewardTotal = cartModel.rewardTotal;

    if (applied && appliedPoints > (pointModel.maxPointDiscount ?? 0)) {
      Future.delayed(Duration.zero, () {
        cartModel.setRewardTotal(0);
      });

      applied = false;
      appliedPoints = 0;
    } else if (applied == false && rewardTotal != 0) {
      // use for preview screen
      appliedPoints =
          (rewardTotal * pointModel.cartPointsRate! / pointModel.cartPriceRate!)
              .ceil();

      applied = true;
      controller.text = appliedPoints.toString();
      setPointDiscount(pointModel, cartModel);
    }
    pointModel.updateRewardDiscount(cartModel);
    return true;
  }

  void setPointDiscount(PointModel pointModel, CartModel cartModel) {
    var total = pointModel.totalReward(appliedPoints.toDouble());

    Future.delayed(const Duration(milliseconds: 500), () {
      cartModel.setRewardTotal(total);
    });
  }
}

class PointSelection extends StatefulWidget {
  final int? limit;
  final int value;
  final bool? enabled;
  final Function? onChanged;
  final TextEditingController controller;

  const PointSelection({
    required this.value,
    required this.controller,
    this.limit = 100,
    this.onChanged,
    this.enabled,
  });

  @override
  State<PointSelection> createState() => _PointSelectionState();
}

class _PointSelectionState extends State<PointSelection> {
  @override
  void initState() {
    super.initState();
    widget.controller.text = widget.value.toString();
  }

  @override
  void didUpdateWidget(covariant PointSelection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value &&
        '${widget.value}' != widget.controller.text) {
      widget.controller.text = '${widget.value}';
      widget.controller.selection = TextSelection.fromPosition(
          TextPosition(offset: widget.controller.text.length));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 44,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2),
        child: TextField(
          enabled: widget.enabled,
          controller: widget.controller,
          keyboardType: TextInputType.number,
          onChanged: (text) {
            widget.onChanged?.call(int.parse(text));
          },
        ),
      ),
    );
  }
}
