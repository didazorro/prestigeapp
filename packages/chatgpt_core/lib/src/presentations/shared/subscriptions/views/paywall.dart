import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/models/store_product_wrapper.dart';

import '../bloc/subscription_bloc.dart';

class Paywall extends StatefulWidget {
  const Paywall({super.key});

  @override
  State<Paywall> createState() => _PaywallState();
}

class _PaywallState extends State<Paywall> {
  SubscriptionBloc get _subscriptionBloc => context.read<SubscriptionBloc>();

  void onPurchase(StoreProduct product) {
    _subscriptionBloc.add(SubscriptionEvent.purchaseProduct(product));
  }

  void _listenStateChange(context, SubscriptionState state) {
    if (state.maybeWhen(
      orElse: () => false,
      purchaseProductFailure: (_, message) => true,
      purchaseProductSuccess: (_, __) => true,
    )) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pop(context);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _subscriptionBloc.add(const SubscriptionEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocConsumer<SubscriptionBloc, SubscriptionState>(
        listener: _listenStateChange,
        builder: (context, state) {
          if (state.maybeWhen(
            orElse: () => false,
            purchaseProductSuccess: (_, product) => true,
          )) {
            return const SizedBox(
              height: 80,
              child: Center(child: Text('✅✅✅Purchase successfully!!')),
            );
          }

          if (state.maybeWhen(
            orElse: () => false,
            loading: (_) => true,
          )) {
            return const SizedBox(
              width: double.infinity,
              height: 80,
              child: Center(
                child: CupertinoActivityIndicator(radius: 12),
              ),
            );
          }

          final products = state.products;

          if (products.isEmpty) {
            return SizedBox(
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: Text('No products available'),
                  ),
                  ElevatedButton(
                    onPressed: Navigator.of(context).pop,
                    child: const Text('Close'),
                  ),
                ],
              ),
            );
          }

          return SafeArea(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25.0)),
                      ),
                      child: Center(
                        child: Text(
                          '✨ FluxGPT Premium',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 32,
                        bottom: 16,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'FluxGPT PREMIUM',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                    ),
                    ListView.builder(
                      itemCount: products.length,
                      itemBuilder: (BuildContext context, int index) {
                        var storeProduct = products[index];

                        return Card(
                          child: ListTile(
                            onTap: () => onPurchase(storeProduct),
                            title: Text(storeProduct.title),
                            subtitle: storeProduct.description.isNotEmpty
                                ? Text(storeProduct.description)
                                : null,
                            trailing: Text(storeProduct.priceString),
                          ),
                        );
                      },
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                    ),
                    const SizedBox(height: 16.0),
                    TextButton(
                      onPressed: Navigator.of(context).pop,
                      child: const Text('Close'),
                    ),
                  ],
                ),
                Positioned.fill(
                  child: state.maybeWhen(
                    purchaseProductLoading: (_) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(25.0),
                          ),
                          color: Colors.black.withOpacity(0.4),
                        ),
                        child: const Center(
                          child: CupertinoActivityIndicator(
                            radius: 12,
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
