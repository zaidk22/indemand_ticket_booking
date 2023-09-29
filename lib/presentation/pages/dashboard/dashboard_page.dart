import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/home_page.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/my_accounts/my_accounts_page.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/my_tickets/my_tickets_page.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/search/search_page.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/widgets/app_bar.dart';
import 'package:upgrader/upgrader.dart';

import '../../../application/dashboard/base_bloc.dart';
import 'widgets/exit_dialog.dart';

@RoutePage()
class DashBoard extends StatelessWidget {
  const DashBoard({super.key});
  void _onItemTapped(int value) {
    // if (value == 0 || value == 1) {
    //   context.read<BaseBloc>().add(BaseEvent.changePage(index: value));
    // } else if (value == 2 && context.read<AuthBloc>().state.isUserSignedin) {
    //   context.read<BaseBloc>().add(BaseEvent.changePage(index: value));
    // } else {
    //   FlutterSnackbar.showError("Please sign in to access profile page.");
    //   AutoRouter.of(context).pushAndPopUntil(
    //     LandingRoute(),
    //     predicate: (_) => false,
    //   );
    // }
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseBloc, BaseState>(
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () {
            showDialog(
              context: context,
              builder: (context) => const ExitConfirmationDialog(),
            );
            return Future.value(false);
          },
          child: Scaffold(
           
            appBar: HomeAppBar(
              title: state.selectedNavBarIndex == 0
                  ? "Home"
                  : state.selectedNavBarIndex == 1
                      ? "Search"
                      : state.selectedNavBarIndex == 2
                          ? "My Tickets"
                          : "My Account",
            ),
            body: UpgradeAlert(
              upgrader: Upgrader(
                  dialogStyle: Platform.isAndroid
                      ? UpgradeDialogStyle.material
                      : UpgradeDialogStyle.cupertino,
                  durationUntilAlertAgain: const Duration(milliseconds: 100),
                  showLater: false,
                  canDismissDialog: false,
                  debugDisplayAlways: false,
                  showReleaseNotes: false),
              child: state.selectedNavBarIndex == 0
                  ? const HomePage()
                  : state.selectedNavBarIndex == 1
                      ? const SearchPage()
                      : state.selectedNavBarIndex == 2
                          ? const MyTicketsPage()
                          : const MyAccountsPage(),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: CustomColor.appBackbroundColor,
              showSelectedLabels: true,
              currentIndex: state.selectedNavBarIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: CustomColor.containerColor,
              onTap: (value) {
                context
                    .read<BaseBloc>()
                    .add(BaseEvent.changePage(index: value));
              },
              items: <BottomNavigationBarItem>[
                const BottomNavigationBarItem(
                  icon: FaIcon(Icons.event),
                  label: 'Events',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    ImageConstant.ticketsDownImage,
                    width: 20,
                    height: 20,
                  ),
                  label: 'My Tickets',
                ),
                const BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'My Account',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
