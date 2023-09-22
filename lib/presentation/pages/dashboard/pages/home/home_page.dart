import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/latest_events.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/home/widgets/popular_locations.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/widgets/app_bar.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/dashboard_page.dart';

import 'widgets/most_popular.dart';
import 'widgets/video_player.dart';





class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
     final deviceSize =  MediaQuery.sizeOf(context);
    return  Container(
        color: CustomColor.appBackbroundColor,
        height : deviceSize.height,
      child: ListView(
        shrinkWrap: true,
        children: [
 const SizedBox(height: 10,),
         //   VideoBackgroundScreen(deviceSize: deviceSize),
                 const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Most Popular",style: CustomTextStyle.titleTextStyle,)),
           const SizedBox(height: 10,),
           MostPopular(deviceSize: deviceSize),
              const SizedBox(height: 15,),
          
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Latest Events",style: CustomTextStyle.titleTextStyle,)),
            const SizedBox(height: 10,),
          LatestEvents(deviceSize: deviceSize),

          /**
           * popular locations
           */

                   const SizedBox(height: 10,),
          
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Popular Locations",style: CustomTextStyle.titleTextStyle,)),

           const SizedBox(height: 10,),
           PopularLocations(deviceSize: deviceSize),
          // MostPopular(deviceSize: deviceSize),
           const SizedBox(height: 10,),
        
        ],
      ),
    );
  }
}
