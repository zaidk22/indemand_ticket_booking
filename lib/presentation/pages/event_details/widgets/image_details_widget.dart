import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/share_file.dart';

import '../../../core/constants/image_constant.dart';

class EventImageWidget extends StatelessWidget {
  const EventImageWidget({super.key,
  required this.deviceSize
  });
  final Size deviceSize ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: deviceSize.height*0.3,
          
             child: Stack(
             children: [
              CachedNetworkImage(
                imageUrl: 
                ImageConstant.dummyNetworkImage,
              fit: BoxFit.cover,
              width: double.infinity,
              ),
             Positioned(
              left: 10,
              top: 10,
              child: IconButton.outlined(
                  style: OutlinedButton.styleFrom(
            foregroundColor: CustomColor.whiteColor,

             backgroundColor: CustomColor.containerColor, // Text color
                side: const BorderSide(color: Colors.transparent), 
                
              // Border color
              ),

                onPressed: () {
                  AutoRouter.of(context).pop();
                },
             icon: const Icon(Icons.arrow_back_ios),color: Colors.black,)),
           
              Positioned(
              right: 10,
              top: 10,
              child: IconButton.outlined(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: CustomColor.whiteColor,

             backgroundColor: CustomColor.containerColor, //// Text color
                side: const BorderSide(color: Colors.transparent),  // Border color
              ),
                onPressed: () {
                  CustomShareFile.shareData("Hi checkout this new event", "https://pub.dev/packages/share_plus/install");
                },
             icon: const Icon(Icons.share),color: Colors.black,))
             ], 
             ),
           )
         ;
  }
}