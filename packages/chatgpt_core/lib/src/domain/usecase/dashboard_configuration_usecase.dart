import 'package:injectable/injectable.dart';

import '../entities/dashboard/dashboard_bottom_navigation_bar_item.dart';
import '../repositories/dashboard_repository.dart';

@injectable
class DashboardConfigurationUsecase {
  final DashboardRepository _dashboardRepository;

  DashboardConfigurationUsecase(this._dashboardRepository);

  List<DashboardBottomNavigationBarItem> getDataDashboardItems() {
    return _dashboardRepository.getDataDashboardItems();
  }
}
