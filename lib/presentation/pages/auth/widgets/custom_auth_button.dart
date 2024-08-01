import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';




class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key,
  this.onTap,
  required this.text
  });
  final VoidCallback? onTap;
  final text ;

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton
    
    (onPressed: onTap,
    style: const ButtonStyle(
      backgroundColor: MaterialStatePropertyAll(CustomColor.appBackbroundColor)
    ),
     child: Text(text,style: CustomTextStyle.titleTextStyle),
    );
  }
}