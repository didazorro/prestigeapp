import 'package:injectable/injectable.dart';

import '../../domain/entities/dashboard/dashboard_bottom_navigation_bar_item.dart';
import '../../domain/repositories/dashboard_repository.dart';

@Injectable(as: DashboardRepository)
class DashboardRepositoryImpl extends DashboardRepository {
  DashboardRepositoryImpl();

  @override
  List<DashboardBottomNavigationBarItem> getDataDashboardItems() {
    // final localConfig = _appPreferences.getDashboardConfigurations();
    // if (localConfig?.isNotEmpty ?? false) {
    //   // will handle
    //   // local is null now, force get default (appPreferences)
    // }

    final dashboardItems = [
      // DashboardBottomNavigationBarItem.imageGenerate,
      // DashboardBottomNavigationBarItem.textGenerate,
      DashboardBottomNavigationBarItem.conversations,
      DashboardBottomNavigationBarItem.manageKey,
    ];

    return dashboardItems;
  }
}
