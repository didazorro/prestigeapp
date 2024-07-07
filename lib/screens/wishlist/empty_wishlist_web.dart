import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../widgets/common/flux_image.dart';

class EmptyWishlistWeb extends StatelessWidget {
  final VoidCallback onShowHome;

  const EmptyWishlistWeb({required this.onShowHome});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 80),
          const FluxImage(
            imageUrl: 'assets/images/empty_product.svg',
            width: 120,
            height: 120,
            package: null,
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).emptyWishlist,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              height: 32 / 24,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(S.of(context).emptyWishlistSubtitle02,
              style: const TextStyle(
                fontSize: 16,
                height: 20 / 16,
              ),
              textAlign: TextAlign.center),
          const SizedBox(height: 40),
          ButtonTheme(
            height: 45,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).primaryColor,
              ),
              onPressed: onShowHome,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text(
                  S.of(context).addToWishlist.toUpperCase(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
