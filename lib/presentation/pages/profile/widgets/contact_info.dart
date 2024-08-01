import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/pages/auth/widgets/custom_form_field.dart';


class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
         physics: BouncingScrollPhysics(),
     
            children: const [
               CustomFormField(hintText: 'Email'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Backup Email'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Mobile No'),
          SizedBox(
            height: 2,
          ),
           CustomFormField(hintText: 'Home Phone'),
          SizedBox(
            height: 2,
          ),
            ],
    );
  }
}