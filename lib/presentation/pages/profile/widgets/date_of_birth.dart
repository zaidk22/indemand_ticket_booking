import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';


class DobWidget extends StatefulWidget {
  const DobWidget({super.key});


  @override
  State<DobWidget> createState() => _DobWidgetState();
}

class _DobWidgetState extends State<DobWidget> {
  DateTime? selectedDate ;
  
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ??DateTime.now() ,
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: Column(
        children: [
          // Display the selected date in a TextFormField
          TextFormField(
            style: CustomTextStyle.labelTextStyle,
            readOnly: true,
            controller: TextEditingController(
              text: selectedDate != null
                  ? "${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}"
                  : "",
            ),
            decoration: InputDecoration(
              labelText: "Date of Birth",
              labelStyle: CustomTextStyle.labelTextStyle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              suffixIcon: IconButton(
                onPressed: () => _selectDate(context),
                icon: const Icon(Icons.calendar_today),
              ),
            ),
          ),
          
     
          // Button to open the date picker
        ],
         ),
     );
  }
}