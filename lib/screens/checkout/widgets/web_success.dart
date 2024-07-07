import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/constants.dart';
import '../../../generated/l10n.dart';
import '../../../models/index.dart' show Order;
import '../../../models/user_model.dart';
import '../../../widgets/common/flux_image.dart';
import '../../../widgets/web_layout/web_layout.dart';
import '../../base_screen.dart';

class WebOrderedSuccess extends StatefulWidget {
  final Order? order;
  final String? orderNum;
  final bool hasScroll;

  const WebOrderedSuccess({this.order, this.orderNum, this.hasScroll = true});

  @override
  BaseScreen<WebOrderedSuccess> createState() => _WebOrderedSuccessState();
}

class _WebOrderedSuccessState extends BaseScreen<WebOrderedSuccess> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context, listen: false).user;
    return Scaffold(
      body: SliverWebLayout(
        actionBuilder: () => const SizedBox(),
        slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: SizedBox(
                width: 350,
                height: MediaQuery.sizeOf(context).height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FluxImage(
                      imageUrl: 'assets/icons/payment/order_confirmed.svg',
                    ),
                    const SizedBox(height: 30),
                    Text(
                      S.of(context).yourOrderIsConfirmed,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    Text(
                      S.of(context).subTitleOrderConfirmed,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.8,
                          ),
                    ),
                    const SizedBox(height: 25),
                    Row(
                      children: [
                        if (user != null) ...[
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                  RouteList.orders,
                                  arguments: user,
                                );
                              },
                              child: Text(S.of(context).viewOrder),
                            ),
                          ),
                          const SizedBox(width: 20),
                        ],
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed(RouteList.home);
                            },
                            child: Text(S.of(context).continueShopping),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
