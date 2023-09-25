import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_auth_button.dart';

import '../../../core/constants/color_constants.dart';
import '../../../core/constants/custom_textstyle.dart';
import '../../auth/widgets/custom_form_field.dart';


class BillingInfo extends StatelessWidget {
  const BillingInfo({super.key});

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
      title: Text('Billing information', style: CustomTextStyle.labelTextStyle),
          children: const [
       
          SizedBox(height: 10,),
     Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'First Name ')),
                 Expanded(child: CustomFormField(hintText: 'Last Name '))
              ],
            ),
              SizedBox(height: 10,),
     Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'Phone')),
                 Expanded(child: CustomFormField(hintText: 'Email'))
              ],
            ),  
                 SizedBox(height: 10,),
     Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'House Number / Name')),
                 Expanded(child: CustomFormField(hintText: 'Street'))
              ],
            ), 

                 SizedBox(height: 10,),
     Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'Town / City')),
                 Expanded(child: CustomFormField(hintText: 'Country'))
              ],
            ),
                 SizedBox(height: 10,),
     Row(
              children: [
                Expanded(child: CustomFormField(hintText: 'Postal Code')),
                // Expanded(child: CustomFormField(hintText: 'Last Name '))
              ],
            ),
            // CustomAuthButton(
            //   onTap: () {
                
            //   },
            //   text: 'Continue')
          ]
          );
 
  }
}