import 'package:flutter/material.dart';

import '../../../../../core/constants/color_constants.dart';
import '../../../../../core/constants/custom_textstyle.dart';


class InfoCard extends StatelessWidget {
  const InfoCard({super.key,this.onTap,
 required this.icon,
 required this.title,
 required this.subtitle
 
  });
 final VoidCallback ? onTap ;
 final IconData? icon ;
 final String title;
 final String subtitle;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
          onTap:  onTap,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
                 color: CustomColor.containerColor,
            ),
               
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 const SizedBox(width: 20,),
                Icon(icon,color: CustomColor.whiteColor,),
                const SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(title,style: CustomTextStyle.titleTextStyle,),
                    const SizedBox(height: 2,),
                    Text(subtitle,style: CustomTextStyle.subtitleTextStyle)
                  ],
                )
              ],
            ),
          ),
    );
  }
}