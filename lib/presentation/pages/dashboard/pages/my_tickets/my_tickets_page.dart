import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/my_tickets/widgets/ticket_tile.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

import '../../../../core/constants/color_constants.dart';

class MyTicketsPage extends StatelessWidget {
  const MyTicketsPage({super.key});

@override
  Widget build(BuildContext context) {
     final deviceSize =  MediaQuery.sizeOf(context);
    return  Container(
        color: CustomColor.appBackbroundColor,
        height : deviceSize.height,
      child: 
          ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) =>    InkWell(
              onTap: () => AutoRouter.of(context).push(const BookedTicketDeatils()),
              child: TicketTile(deviceSize: deviceSize,)))
        
     
   
    );
  }
}