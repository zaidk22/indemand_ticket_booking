import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

import 'widgets/cart_tile.dart';


@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text('Cart Summary',style: CustomTextStyle.appTitleTextStyle,),
      ),
      body: ListView(
        children:  [
          SizedBox(
            height: deviceSize.height,
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) =>  const CartTileWidget()),
          )
           
        ],
      ),
    
    bottomNavigationBar: BottomAppBar(
      //height: 60,
      color: CustomColor.appBackbroundColor,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Total Amount :  \$200000',style: CustomTextStyle.labelTextStyle,
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)
                  ),
                  onPressed:() => AutoRouter.of(context).push(const CheckoutRoute()), icon: const Icon(Icons.shopping_cart,
                color: Colors.white,
                ), label: Text('Checkout',style: CustomTextStyle.labelTextStyle,)),
              )
            ],
          ),
        ],
      ),
    ),
   
    );
  }
}