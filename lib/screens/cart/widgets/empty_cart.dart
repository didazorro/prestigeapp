import 'package:flutter/material.dart';

import '../../../common/tools/navigate_tools.dart';
import '../../../generated/l10n.dart';
import '../../../modules/dynamic_layout/helper/helper.dart';
import '../../../widgets/common/flux_image.dart';

class EmptyCart extends StatelessWidget {
  final bool isDesktop;

  const EmptyCart({super.key, this.isDesktop = false});
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    if (isDesktop) {
      return LayoutBuilder(builder: (ct, constraints) {
        return LayoutLimitWidthScreen(
          backgroundColor: Theme.of(context).colorScheme.surface,
          child: Column(
            children: <Widget>[
              SizedBox(height: constraints.maxHeight * 0.3),
              const FluxImage(
                imageUrl: 'assets/images/empty_cart.svg',
                width: 90,
                height: 90,
              ),
              const SizedBox(height: 20),
              Text(
                S.of(context).emptyCart,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  height: 32 / 24,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  S.of(context).emptyCartSubtitle02,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 20 / 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: ButtonTheme(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                    ),
                    onPressed: () =>
                        NavigateTools.navigateToDefaultTab(context),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        S.of(context).exploreNow,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      });
    }

    return SizedBox(
      width: screenSize.width,
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width:
              screenSize.width / (2 / (screenSize.height / screenSize.width)),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  'assets/images/leaves.png',
                  width: 120,
                  height: 120,
                ),
              ),
              Column(
                children: <Widget>[
                  const SizedBox(height: 60),
                  Text(S.of(context).yourBagIsEmpty,
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(S.of(context).emptyCartSubtitle,
                        style: Theme.of(context).textTheme.bodyMedium,
                        textAlign: TextAlign.center),
                  ),
                  const SizedBox(height: 50)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
