import 'package:flutter/material.dart';

class DialogContainerWidget extends StatelessWidget {
  final Widget child;

  const DialogContainerWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 300),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: const Border.fromBorderSide(
            BorderSide(color: Color(0xFF696969)),
          ),
          borderRadius: BorderRadiusDirectional.circular(16),
          color: Colors.white,
        ),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(16),
          child: child,
        ),
      ),
    );
  }
}
