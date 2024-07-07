import 'package:flutter/material.dart';

import '../../common/constants.dart';
import '../../generated/l10n.dart';

class EmptyWishlist extends StatelessWidget {
  final VoidCallback onShowHome;
  final VoidCallback onSearchForItem;

  const EmptyWishlist({
    required this.onShowHome,
    required this.onSearchForItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 80),
          Image.asset(
            'assets/images/empty_wishlist.png',
            width: 120,
            height: 120,
          ),
          const SizedBox(height: 20),
          Text(
            S.of(context).noFavoritesYet,
            style: const TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Text(S.of(context).emptyWishlistSubtitle,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center),
          const SizedBox(height: 30),
          Row(
            children: [
              Expanded(
                child: ButtonTheme(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: onShowHome,
                    child: Text(
                      S.of(context).startShopping.toUpperCase(),
                      style: TextStyle(
                        color: Theme.of(context)
                            .primaryColor
                            .getColorBasedOnBackground,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ButtonTheme(
                  height: 44,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: kGrey400,
                      backgroundColor: kGrey200,
                    ),
                    onPressed: onSearchForItem,
                    child: Text(S.of(context).searchForItems.toUpperCase()),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
