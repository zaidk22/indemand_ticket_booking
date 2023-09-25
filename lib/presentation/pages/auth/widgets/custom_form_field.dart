import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.hintText,
    this.inputFormatters,
    this.validator,
    this.onChange,
    this.prefixIcon
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?, )? validator;
  final void Function(String?)? onChange;
  final IconData ? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
      
        style: CustomTextStyle.labelTextStyle,
        inputFormatters: inputFormatters,
          validator: (inputString) {
                return validator?.call(inputString);
              },
        decoration: InputDecoration(hintText: hintText,
        label: Text(hintText),
        
        hintStyle: CustomTextStyle.labelTextStyle,
        labelStyle: CustomTextStyle.labelTextStyle,
      prefixIcon:   Icon(prefixIcon,color: CustomColor.whiteColor,)  ,
       border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                 
        ),),
        onChanged: onChange,
      ),
    );
  }
}