import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        color: CustomColor.containerColor,
        borderRadius: BorderRadius.circular(50),
        
        
      ),
      child: TextField(
        style:  CustomTextStyle.lableTextStyle,
        autofocus: false,
        decoration: InputDecoration(
        
          prefixIcon: const Icon(Icons.search,color: Colors.white,
          size: 15,
          ),
          suffixIcon: IconButton(onPressed: () {
            
          }, icon: const Icon(Icons.close_rounded,color: Colors.white,
          size: 15,)),
          border: InputBorder.none,
          hintText: "Event Name",
          hintStyle: CustomTextStyle.lableTextStyle,
         
        ),
      ),
    );
  }
}