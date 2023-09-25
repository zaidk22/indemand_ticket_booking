import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';

class CartTileWidget extends StatelessWidget {
  const CartTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
     
      decoration: BoxDecoration(
        color: CustomColor.containerColor,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          
          children: [
            Text('In Demand Radio live at Punch Tarmeys',style: CustomTextStyle.labelTextStyle,),
            Text('\$ 200',style: CustomTextStyle.labelTextStyle,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(onPressed: () {
                  
                }, icon: const Icon(Icons.remove_circle_outline_rounded,
                color: Colors.red,
               
                )),
                
                Text("1",style: CustomTextStyle.labelTextStyle,),

                     IconButton(onPressed: () {
                  
                }, icon: const Icon(Icons.add_circle_outline_rounded,
                color: Colors.green,
                
                )),

                const Spacer(flex: 1,),
                 IconButton(onPressed: () {
                  
                               }, icon: const Icon(Icons.delete,
                               color: Colors.red,
                               
                               )),
              ],
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total Amount ",style: CustomTextStyle.labelTextStyle,),
                
                  Expanded(
                    child: Text("\$200",style: CustomTextStyle.labelTextStyle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    ),
                  ),
                 const SizedBox(width: 10,)
                ],
              
            )
          ],
      
        ),
      ),
    );
  }
}