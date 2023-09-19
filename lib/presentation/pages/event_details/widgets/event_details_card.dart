import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/event_details/widgets/icon_text_row.dart';

class EventDetailCard extends StatelessWidget {
  const EventDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("In Demand Radio Live At Punch Tarmeys",
        style: CustomTextStyle.subtitleBlackTextStyle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        ),
       // const SizedBox(height: 2,),
       Divider(color: Colors.black12,
       thickness: 3,
       ),
 IconTextRow(
  iconData: Icons.location_on,
  text: "Ofiveone Complex 1 Mount Pleasant Liverpool L3 5SX",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),

const SizedBox(height: 3,),
 IconTextRow(
  iconData: Icons.calendar_month,
  text: "Sat 30th Sep 2023",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),

const SizedBox(height: 3,),
 IconTextRow(
  iconData: Icons.schedule,
  text: "08:00 PM till 03:00 AM",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),

const SizedBox(height: 3,),
 IconTextRow(
  iconData: Icons.description,
  text: "051",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),


const SizedBox(height: 3,),
 IconTextRow(
  iconData: Icons.person,
  text: "Minimum Age : 30",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),
   
     
const SizedBox(height: 3,),
 IconTextRow(
  iconData:Icons.schedule,
  text: "Last Entry Time : 01:00 AM",
  textStyle: CustomTextStyle.subtitleBlackMinTextStyle,
),
  
     
      ],
    );
  }
  
}