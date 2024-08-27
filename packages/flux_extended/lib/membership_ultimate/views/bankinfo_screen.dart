import 'package:flutter/material.dart';
import 'package:fstore/common/constants.dart';
import 'package:fstore/widgets/html/index.dart';

class BankInfoScreen extends StatefulWidget {
  final String bankInfo;

  const BankInfoScreen({required this.bankInfo});
  @override
  State<BankInfoScreen> createState() => _BankInfoScreenState();
}

class _BankInfoScreenState extends State<BankInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context)
                .popUntil(ModalRoute.withName(RouteList.login));
          },
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              HtmlWidget(
                widget.bankInfo,
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
