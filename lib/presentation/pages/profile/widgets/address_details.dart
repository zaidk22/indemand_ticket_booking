import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';


class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
         physics: BouncingScrollPhysics(),
            children: const [
               CustomFormField(hintText: 'House Number'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Address 3'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Address 4'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'City'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'County'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Country'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Postal Code*'),
          SizedBox(
            height: 2,
          ),
       
            ],
    );
  }
}