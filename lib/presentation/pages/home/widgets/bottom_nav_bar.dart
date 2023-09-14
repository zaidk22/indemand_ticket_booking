import 'package:bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indemand_ticket_booking/application/bottom_nav_bar/base_bloc.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';



class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});
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
        return 
         
           BottomNavigationBar(
            
          type: BottomNavigationBarType.fixed,
           backgroundColor: CustomColor.appBackbroundColor,
            showSelectedLabels: true,
            currentIndex: state.selectedNavBarIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black,
            onTap: (value) {
              context.read<BaseBloc>().add(BaseEvent.changePage(index: value));
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
          icon: Icon(Icons.call),
          label: 'Events',
              ),
              BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search',
              ),
              BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket_sharp),
          label: 'My Tickets',
              ),
          
           BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'My Account',
              ),
            ],
          );
     
      },
    );
  }
}