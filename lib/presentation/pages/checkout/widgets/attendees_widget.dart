import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';

import '../../../core/constants/custom_textstyle.dart';


class AttendeesWidget extends StatelessWidget {
  const AttendeesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
     
     collapsedBackgroundColor: CustomColor.containerColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
      ),
      backgroundColor: CustomColor.containerColor,
    collapsedShape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), // Adjust the radius as needed
      ),
      expandedAlignment: Alignment.topLeft,
      childrenPadding:  const EdgeInsets.all(8.0),
      title: Text('Please enter name of all Attendees', style: CustomTextStyle.labelTextStyle),
          children: [
            Text('London new year\'s eve: Masquerade Ball / VIP / Quantity-3'
            , style: CustomTextStyle.labelTextStyle
            ),
          SizedBox(height: 10,),
           ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) =>  Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'First Name')),
                 Expanded(child: CustomFormField(hintText: 'Last Name'))
              ],
            ),)
          ],);
  }
}