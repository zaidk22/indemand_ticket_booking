import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/latest_event_tile.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/latest_events.dart';


@RoutePage()
class DetailedMostPopularPage extends StatelessWidget {
  const DetailedMostPopularPage({super.key,
  required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text(title,style: CustomTextStyle.appTitleTextStyle,),
      ),
      body: ListView(
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 20),
        children: [
           ListView.separated(
            physics: const BouncingScrollPhysics(),
            separatorBuilder: (context, index) => const SizedBox(height: 15,),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) => LatestEventTile(deviceSize: deviceSize,
            
            ),)
        ],
      ),
    );
  }
}