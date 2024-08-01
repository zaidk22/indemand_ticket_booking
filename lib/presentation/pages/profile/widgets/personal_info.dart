import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';

import 'date_of_birth.dart';
import 'gender.dart';


class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key,
  required this.controller
  });

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return  Column(
      // controller: controller,
      //    shrinkWrap: true,

      //    physics: const BouncingScrollPhysics(),
            children: const [
 CustomFormField(hintText: 'First Name'),
          SizedBox(
            height: 2,
          ),
          CustomFormField(hintText: 'Last Name'),
          SizedBox(
            height: 2,
          ),
          GenderSelection(),
          SizedBox(
            height: 2,
          ),
          CustomFormField(hintText: 'Nationality'),
          SizedBox(
            height: 2,
          ),
          DobWidget(),
          SizedBox(
            height: 10,
          ),
            ],
    )
         ;
  }
}