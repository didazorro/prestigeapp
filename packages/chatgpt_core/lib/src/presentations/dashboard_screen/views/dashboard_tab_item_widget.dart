import 'package:flutter/material.dart';

// import '../../../core/design_system/resources/icon_constants.dart';
import '../../../domain/entities/dashboard/dashboard_bottom_navigation_bar_item.dart';
import '../../chat/views/chat_screen.dart';
import '../../manage_key/index.dart';

class DashboardTabItemWidget {
  final DashboardBottomNavigationBarItem item;
  final IconData icon;
  final String text;

  const DashboardTabItemWidget({
    required this.item,
    required this.icon,
    required this.text,
  });
}

extension DashboardBottomNavigationBarKeyBuilderExt
    on DashboardBottomNavigationBarItem {
  Widget build(BuildContext _) {
    switch (this) {
      case DashboardBottomNavigationBarItem.conversations:
        return const ChatScreen();
      case DashboardBottomNavigationBarItem.manageKey:
        return const ManageScreen();
    }
  }
}

extension DashboardBottomNavigationBarKeyRouteExt
    on DashboardBottomNavigationBarItem {
  String get routeName {
    switch (this) {
      case DashboardBottomNavigationBarItem.conversations:
        return ChatScreen.routeName;
      case DashboardBottomNavigationBarItem.manageKey:
        return ManageScreen.routeName;
    }
  }
}

extension DashboardBottomNavigationBarKeyExt
    on DashboardBottomNavigationBarItem {
  String text(BuildContext _) {
    switch (this) {
      case DashboardBottomNavigationBarItem.conversations:
        return 'Conversations';
      case DashboardBottomNavigationBarItem.manageKey:
        return 'Manage Key';
    }
  }

  IconData get icon {
    switch (this) {
      case DashboardBottomNavigationBarItem.conversations:
        return Icons.chat_bubble_outline;
      case DashboardBottomNavigationBarItem.manageKey:
        return Icons.vpn_key;
    }
  }
}
