import 'package:flutter/material.dart';

class BottomSheetIntroduction extends StatefulWidget {
  const BottomSheetIntroduction({
    super.key,
    required this.isLoggedIn,
    required this.onTapSubscription,
    required this.onTapInputApiKey,
    required this.enableSubscription,
    required this.enableInputKey,
  });

  final bool isLoggedIn;
  final Function() onTapSubscription;
  final Function() onTapInputApiKey;
  final bool enableSubscription;
  final bool enableInputKey;

  @override
  State<BottomSheetIntroduction> createState() =>
      _BottomSheetIntroductionState();
}

class _BottomSheetIntroductionState extends State<BottomSheetIntroduction> {
  @override
  Widget build(BuildContext context) {
    // Show bottom sheet to notice with user
    // You need to subscribe to a subscription or input an openai key to use this feature
    // Show 2 buttons, one to input api key and one to subscribe a subscription
    // If user click on input api key, show a dialog to input api key
    // If user click on subscribe a subscription, show a bottom sheet to subscribe a subscription
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10),
          Container(
            width: 50,
            height: 5,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'You need to subscribe to a subscription or input an openai key to use this feature',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (widget.enableInputKey) ...[
                  ElevatedButton(
                    onPressed: widget.onTapInputApiKey,
                    child: const Text('Input API Key'),
                  ),
                  const SizedBox(height: 10),
                ],
                if (widget.enableSubscription) ...[
                  ElevatedButton(
                    onPressed: () {
                      // Show a bottom sheet to subscribe a subscription
                      widget.onTapSubscription();
                    },
                    child: widget.isLoggedIn
                        ? const Text('Subscribe a subscription')
                        : const Text('Login to subscribe a subscription'),
                  ),
                  const SizedBox(height: 16),
                ],
                OutlinedButton(
                  onPressed: () {
                    // Show a bottom sheet to subscribe a subscription
                    Navigator.of(context).pop();
                  },
                  child: const Text('Close'),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
