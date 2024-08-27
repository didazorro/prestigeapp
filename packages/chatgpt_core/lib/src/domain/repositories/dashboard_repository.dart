import '../entities/dashboard/dashboard_bottom_navigation_bar_item.dart';

abstract class DashboardRepository {
  List<DashboardBottomNavigationBarItem> getDataDashboardItems();
}
