import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';

import 'date_of_birth.dart';
import 'gender.dart';


class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  ExpansionTile(
            title: Text(
                'Personal Information',
                style: CustomTextStyle.titleTextStyle,
              
            ),
            children: [
 const CustomFormField(hintText: 'First Name'),
          const SizedBox(
            height: 2,
          ),
          const CustomFormField(hintText: 'Last Name'),
          const SizedBox(
            height: 2,
          ),
          const GenderSelection(),
          const SizedBox(
            height: 2,
          ),
          const CustomFormField(hintText: 'Nationality'),
          const SizedBox(
            height: 2,
          ),
          const DobWidget(),
          const SizedBox(
            height: 10,
          ),
            ],
    )
         ;
  }
}