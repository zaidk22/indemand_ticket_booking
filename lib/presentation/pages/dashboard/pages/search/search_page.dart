import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';

import 'widgets/custom_date_widget.dart';
import 'widgets/search_event_tile.dart';
import 'widgets/search_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
     return  Container(
      color: CustomColor.appBackbroundColor,
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchWidget(),
          const SizedBox(height: 2,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const CustomDateWidget()),
            const SizedBox(height: 5,),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const SearchEventTile(),),
            )
       
        ],
       ),
     );
  }
}