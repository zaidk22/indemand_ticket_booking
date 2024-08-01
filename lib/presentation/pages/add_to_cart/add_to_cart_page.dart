import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/add_to_cart/widgets/custom_bottom_app_bar.dart';
import 'package:indemand_ticket_booking/presentation/pages/add_to_cart/widgets/ticket_type_tile.dart';

@RoutePage()
class AddToCartPage extends StatelessWidget {
  const AddToCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text(
          "Tickets",
          style: CustomTextStyle.appTitleTextStyle,
        ),
      ),
      body: ListView(
        shrinkWrap: false,
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                color: CustomColor.containerColor,
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
                title: Text(
                  'Tickets',
                  style: CustomTextStyle.labelTextStyle,
                ),
                subtitle: Text(
                  'Fri Sep 30,2024 | 7:30 PM ',
                  style: CustomTextStyle.subtitleTextStyle,
                ),
                trailing: Image.asset(
                  ImageConstant.sideTicketsImage,
                  height: 35,
                  width: 35,
                )),
          ),
         
         ListView.builder(

          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) =>  TicketTypeTile(),)
         
       
       
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
