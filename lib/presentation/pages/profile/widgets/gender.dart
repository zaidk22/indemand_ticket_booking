import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';


class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? selectedGender ; // Store the selected gender

  void _selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            PopupMenuButton<String>(
              onSelected: _selectGender,
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Male',
                    child: Text('Male'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Female',
                    child: Text('Female'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Other',
                    child: Text('Other'),
                  ),
                ];
              },
              child: ListTile(
                title: Text(selectedGender !=null ? selectedGender! : 'Select Gender',style: CustomTextStyle.labelTextStyle,),
                trailing: Icon(Icons.arrow_drop_down),
              ),
            ),
          ],
        ),
      ),
    );
  }
}