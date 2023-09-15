import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/widgets/app_bar.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/widgets/dashboard_page.dart';





class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Container(
        color: Colors.white,
        child: Text("Home"),
      ),
    );
  }
}