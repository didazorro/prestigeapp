part of 'dashboard_bloc.dart';

@immutable
abstract class DashboardEvent {
  final int index;

  const DashboardEvent(this.index);
}

class BottomBarItemSelectedEvent extends DashboardEvent {
  const BottomBarItemSelectedEvent(super.index);
}
