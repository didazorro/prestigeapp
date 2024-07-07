import 'dart:async';

import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

const _countDownFrom = 5;

class CreateReviewSuccess extends StatefulWidget {
  const CreateReviewSuccess({super.key});

  @override
  State<CreateReviewSuccess> createState() => _CreateReviewSuccessState();
}

class _CreateReviewSuccessState extends State<CreateReviewSuccess> {
  final streamController = StreamController<int>.broadcast();

  @override
  void initState() {
    super.initState();
    Stream<int>.periodic(
      const Duration(seconds: 1),
      (count) => _countDownFrom - 1 - count,
    ).take(_countDownFrom).listen((count) {
      if (count == 0) {
        Navigator.pop(context);
      }
      streamController.sink.add(count);
    });
  }

  @override
  void dispose() {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).rateProduct,
        ),
        backgroundColor: colorScheme.surface,
      ),
      backgroundColor: colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Icon(
              Icons.check_circle,
              size: 100,
              color: Colors.green,
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).createReviewSuccess,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              S.of(context).createReviewSuccessMsg,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            StreamBuilder<int>(
                stream: streamController.stream,
                initialData: _countDownFrom,
                builder: (context, snapshot) {
                  final count = snapshot.data;
                  return OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text('${S.of(context).close} ($count)'),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
