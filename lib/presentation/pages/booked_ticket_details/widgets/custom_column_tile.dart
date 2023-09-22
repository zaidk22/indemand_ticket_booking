import 'package:flutter/material.dart';

import '../../../core/constants/custom_textstyle.dart';

class CustomColumTile extends StatelessWidget {
  const CustomColumTile({super.key,
  required this.subtitle,
  required this.title,
  required this.deviceSize
  });
  final String title;
  final String subtitle;
  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(horizontal: 10),
     padding: const EdgeInsets.symmetric(horizontal: 10),
      width: deviceSize.width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(subtitle,style: CustomTextStyle.ticketsubtitleTextStyle,),
                  const SizedBox(height: 2,),
                  Text(title,style: CustomTextStyle.tickettitleTextStyle,)
    
        ],
      ),
    );
  }
}