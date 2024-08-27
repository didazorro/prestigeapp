import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/components/widgets/cupertino_tab_view_custom.dart';
import '../../../core/components/widgets/will_pop_scope.dart';
import '../../app_coordinator.dart';
import '../../routes.dart';
import '../bloc/dashboard_bloc.dart';
import 'dashboard_tab_item_widget.dart';

class DashboardScreen extends StatefulWidget {
  static const String routeName = 'dashboard';

  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  late List<DashboardTabItemWidget> _dashboards;

  void _onTapBottomBarNav(int index) {
    if (context.read<DashboardBloc>().state.index != index) {
      context.read<DashboardBloc>().add(BottomBarItemSelectedEvent(index));
    }
  }

  // void _onListenerDashboardBloc(BuildContext context, DashboardState state) {
  //   if (state is ButtombarSelected) {
  //     //
  //
  //   }
  // }

  @override
  void initState() {
    _dashboards =
        context.read<DashboardBloc>().state.dashboardTabItems.map((e) {
      return DashboardTabItemWidget(
        text: e.text(context),
        icon: e.icon,
        item: e,
      );
    }).toList();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      // listener: _onListenerDashboardBloc,
      builder: (context, state) {
        final theme = Theme.of(context);

        return WillPopScopeWidget(
          onWillPop: () async {
            if (context.read<DashboardBloc>().state.index != 0) {
              context.startSelectedBottomBarItem(0);

              return false;
            }

            return true;
          },
          child: CupertinoTabScaffold(
            backgroundColor: theme.scaffoldBackgroundColor,
            tabBuilder: (context, index) {
              return CupertinoTabViewCustom(
                initialRoute: _dashboards[index].item.routeName,
                onGenerateRoute: OpenAIRoutes.generateRoute,
              );
            },
            tabBar: CupertinoTabBar(
              backgroundColor: theme.scaffoldBackgroundColor,
              items: _dashboards
                  .map((e) => BottomNavigationBarItem(
                        icon: Icon(e.icon),
                        label: e.text,
                      ))
                  .toList(),
              onTap: _onTapBottomBarNav,
            ),
          ),
        );
      },
    );
  }
}
