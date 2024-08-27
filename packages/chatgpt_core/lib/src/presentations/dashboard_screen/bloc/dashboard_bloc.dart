import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/dashboard/dashboard_bottom_navigation_bar_item.dart';
import '../../../domain/usecase/dashboard_configuration_usecase.dart';
import '../../../domain/usecase/user_storage_usecase.dart';

part 'dashboard_event.dart';

part 'dashboard_state.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  // ignore: unused_field
  final UserStorageUsecase _userStorageUsecase;

  DashboardBloc(
    DashboardConfigurationUsecase dashBoardConfigurationsUsecase,
    this._userStorageUsecase,
  ) : super(DashboardInitial(
          dashBoardConfigurationsUsecase.getDataDashboardItems(),
          0,
        )) {
    on<BottomBarItemSelectedEvent>(_onBottomBarItemSelectedEvent);
  }

  FutureOr<void> _onBottomBarItemSelectedEvent(
    BottomBarItemSelectedEvent event,
    Emitter<DashboardState> emit,
  ) {
    emit(ButtombarSelected(
      state.dashboardTabItems,
      event.index,
    ));
  }
}
