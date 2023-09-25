import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/attendees_widget.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/billing_info.dart';
import 'package:indemand_ticket_booking/presentation/pages/checkout/widgets/order_review.dart';

@RoutePage()
class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text('Checkout', style: CustomTextStyle.appTitleTextStyle),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align children to the left and right
                children: [
                  Text('Time Remaining to checkout', style: CustomTextStyle.labelTextStyle),
                  Text('🕑  10:00', style: CustomTextStyle.labelTextStyle),
                ],
              ),
            
          ),
         const Padding(
           padding: EdgeInsets.all(8.0),
           child: AttendeesWidget(),
         ),

          const Padding(
           padding: EdgeInsets.all(8.0),
           child: BillingInfo(),
         ),

          const Padding(
            padding: EdgeInsets.all(8.0),
            child: OrderReview(),
          )
          
          
        ],
      ),
       bottomNavigationBar: BottomAppBar(
      
      color: CustomColor.appBackbroundColor,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Total Amount :  \$200000',style: CustomTextStyle.labelTextStyle,
                ),
              ),
              const SizedBox(width: 5,),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)
                  ),
                  onPressed: () {
                  
                }, 
               child: Text('Procced to Pay',style: CustomTextStyle.labelTextStyle,)),
                )
              
            ],
          ),
        ],
      ),
    ),
   
    );
  }
}
