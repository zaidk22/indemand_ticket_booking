import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/pages/home/widgets/app_bar.dart';
import 'package:indemand_ticket_booking/presentation/pages/home/widgets/bottom_nav_bar.dart';




@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: const HomeAppBar(),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            color: Colors.white,
          ),
        ],
      ),
       bottomNavigationBar: const CustomBottomNavBar()
    );
  }
}