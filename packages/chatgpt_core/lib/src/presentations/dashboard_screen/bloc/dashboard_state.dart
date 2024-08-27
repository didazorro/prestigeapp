part of 'dashboard_bloc.dart';

abstract class DashboardState extends Equatable {
  final List<DashboardBottomNavigationBarItem> dashboardTabItems;
  final int index;

  const DashboardState(
    this.dashboardTabItems,
    this.index,
  );
}

class DashboardInitial extends DashboardState {
  const DashboardInitial(
    super.dashboardTabItems,
    super.index,
  );

  @override
  List<Object?> get props => [dashboardTabItems];
}

class ButtombarSelected extends DashboardInitial {
  const ButtombarSelected(super.dashboardTabItems, super.index);

  @override
  List<Object?> get props => [index];
}
