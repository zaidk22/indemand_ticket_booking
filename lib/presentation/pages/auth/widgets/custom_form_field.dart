import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        
        inputFormatters: inputFormatters,
          validator: (inputString) {
                return validator?.call(inputString);
              },
        decoration: InputDecoration(hintText: hintText,
        label: Text(hintText),
      prefixIcon:   Icon(prefixIcon)  ,
       border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                 
        ),),
        onChanged: onChange,
      ),
    );
  }
}