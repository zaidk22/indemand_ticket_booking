import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';

class CustomDateWidget extends StatefulWidget {
  const CustomDateWidget({super.key});

  @override
  State<CustomDateWidget> createState() => _CustomDateWidgetState();
}

class _CustomDateWidgetState extends State<CustomDateWidget> {
DateTime? selectedDate ;
  
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ??DateTime.now() ,
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectDate(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      
    
        decoration: BoxDecoration(
          color: CustomColor.containerColor,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.calendar_month,
            color: CustomColor.whiteColor,
            ),
            const SizedBox(width: 5,),
        Text(   selectedDate !=null ? "$selectedDate" :"Date",
            style: CustomTextStyle.lableTextStyle,
            ),
             selectedDate ==null ? const SizedBox() :IconButton(onPressed: () {
               setState(() {
                 selectedDate =null;
               });
             }, icon: Icon(Icons.close,color: Colors.white,))

          ],
        ),
      ),
    );
  }
}