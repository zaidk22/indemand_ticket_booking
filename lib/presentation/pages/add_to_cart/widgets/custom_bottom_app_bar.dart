import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/checkout_page.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';




class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
     // color: CustomColor.appBackbroundColor,
     color: Colors.transparent,
     clipBehavior: Clip.none,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor:MaterialStatePropertyAll(CustomColor.containerColor) 
                ),
                onPressed: () {
                  AutoRouter.of(context).push(const CartRoute());
              }, child: Text("View Cart",style: CustomTextStyle.labelTextStyle,)),
            ),
          ),
          
         Expanded(
           child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
             child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:MaterialStatePropertyAll(CustomColor.containerColor) 
                  ),
                  onPressed: () {
                  AutoRouter.of(context).push(const CheckoutRoute());
                }, child: Text("Checkout",style: CustomTextStyle.labelTextStyle,)),
           ),
         ),
          
        ],
      ),
    );
  }
}