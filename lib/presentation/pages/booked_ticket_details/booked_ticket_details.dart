import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:indemand_ticket_booking/presentation/pages/booked_ticket_details/widgets/custom_column_tile.dart';
import 'package:indemand_ticket_booking/presentation/pages/booked_ticket_details/widgets/booked_ticket_tile.dart';

@RoutePage()
class BookedTicketDeatils extends StatelessWidget {
  const BookedTicketDeatils({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text(
          'My Tickets',
          style: CustomTextStyle.appTitleTextStyle,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: CustomColor.backGradient,
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3, 
          itemBuilder: (context, index) {
    
            return BookedTicketTile(
              index: index,
            );
          },
        ),
      ),
    );
  }
}
