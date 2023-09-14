
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';

import 'package:indemand_ticket_booking/presentation/core/constants/dimension_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBar({super.key});



   @override

    Size get preferredSize => const Size.fromHeight(DimensionConstants.kAppBarSize);
  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      
      backgroundColor: CustomColor.appBackbroundColor,
      //leading: Image.asset(ImageConstant.authLogoImage),

      title:  Text("Home",style: CustomTextStyle.titleTextStyle,),
      actions: [
        IconButton(
          onPressed: () {
            
          },
         icon: const Icon(Icons.shopping_cart,
        color: CustomColor.authBackbroundColor3,
        ))
      ],
      
    );
  }

 

}