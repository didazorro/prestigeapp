import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

extension RequestStatusExtension on String {
  String get label {
    switch (this) {
      case 'Pending':
        return S.current.pending;
      case 'Approved':
        return S.current.approved;
      case 'Cancelled':
        return S.current.cancelled;
    }
    return this;
  }

  Color get color {
    switch (this) {
      case 'Pending':
        return const Color(0xFF99763E);
      case 'Approved':
        return const Color(0xFF3957AA);
      case 'Cancelled':
        return Colors.white;
    }
    return Colors.transparent;
  }

  Color get bgColor {
    switch (this) {
      case 'Pending':
        return const Color(0xFFF7F1DD);
      case 'Approved':
        return const Color(0xFFE2EAFA);
      case 'Cancelled':
        return Colors.red;
    }
    return Colors.transparent;
  }
}

class RequestStatus extends StatelessWidget {
  const RequestStatus({super.key, required this.status});
  final String status;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      padding: const EdgeInsets.symmetric(horizontal: 22),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11), color: status.bgColor),
      child: Center(
          child: Text(
        textAlign: TextAlign.center,
        status.label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
            height: 1, //remove padding
            color: status.color,
            fontSize: 11,
            fontWeight: FontWeight.w700),
      )),
    );
  }
}
