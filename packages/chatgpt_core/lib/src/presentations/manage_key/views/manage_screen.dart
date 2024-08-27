import 'package:flutter/material.dart';

import '../../app_coordinator.dart';

class ManageScreen extends StatefulWidget {
  const ManageScreen({super.key});

  static const routeName = 'manage';

  @override
  State<ManageScreen> createState() => _ManageScreenState();
}

class _ManageScreenState extends State<ManageScreen> {
  void _onPressedApiKey() {
    context.showInputOpenAiKey();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: _onPressedApiKey,
              child: const Text('API Key'),
            ),
          ],
        ),
      ),
    );
  }
}
