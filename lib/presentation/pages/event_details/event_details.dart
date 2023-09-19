import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_auth_button.dart';
import 'package:indemand_ticket_booking/presentation/pages/event_details/widgets/event_details_card.dart';
import 'package:indemand_ticket_booking/presentation/pages/event_details/widgets/tab_view.dart';

import 'widgets/image_details_widget.dart';

@RoutePage()
class EventDetails extends StatelessWidget {
  const EventDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: null,
        body: ListView(
          children: [
           EventImageWidget(deviceSize: deviceSize,),
            const SizedBox(height: 10,),
            const EventDetailCard(),

                const SizedBox(height: 10,),

               EventTabView(deviceSize: deviceSize),
          ],
        ),
      
      bottomNavigationBar: BottomAppBar(
       
        color: Colors.transparent,
        height: 56,
        elevation: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("from Rs 100",style: CustomTextStyle.subtitleBlackMinTextStyle,),
            CustomAuthButton(text: "Book Now")
          ],
        ),
      ),
      ),
    );
  }
}