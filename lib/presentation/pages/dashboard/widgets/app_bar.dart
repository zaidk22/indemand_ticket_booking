
import 'package:auto_route/auto_route.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:badges/badges.dart' as badges;
import 'package:indemand_ticket_booking/presentation/core/constants/dimension_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomeAppBar({super.key,required this.title});


  final String title;



   @override

    Size get preferredSize => const Size.fromHeight(DimensionConstants.kAppBarSize);
  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      
      backgroundColor: CustomColor.appBackbroundColor,
      //leading: Image.asset(ImageConstant.authLogoImage),

      title:  Text(title,style: CustomTextStyle.appTitleTextStyle,),
      actions:  [
          GestureDetector(
            onTap: () =>  AutoRouter.of(context).push(const CartRoute()),
            child: badges.Badge(
          
              //  position: badges.BadgePosition.topEnd(top: -12, end: -12),
           onTap: () =>  AutoRouter.of(context).push(const CartRoute()),      
                badgeContent: const Text('3'),
                 badgeStyle: const badges.BadgeStyle(
                 
                  //badgeColor: CustomColor.containerColor,
              
                  badgeGradient: badges.BadgeGradient.linear(
              colors: [Colors.deepOrangeAccent, Colors.yellow],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                  ),
                  elevation: 4,
                ),
          
                child: const Icon(Icons.shopping_cart,
                  color: CustomColor.authBackbgroundColor3,
                  ),
              ),
          ),
       const SizedBox(width: 10,)
      ],
      
    );
  }

 

}