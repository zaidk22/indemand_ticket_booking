import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';



class TicketTypeTile extends StatelessWidget {
  const TicketTypeTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: CustomColor.containerColor,
         // gradient: CustomColor.backGradient2,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             const SizedBox(height: 10,),
            Text(
              'EARLY BIRD',
              style: CustomTextStyle.labelTextStyle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$ 40.00',
              style: CustomTextStyle.subtitleTextStyle,
            ),
            const SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,

                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
               
                      backgroundColor: const MaterialStatePropertyAll(
                          CustomColor.appBackbroundColor),
                      iconColor: const MaterialStatePropertyAll(
                          CustomColor.whiteColor),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                    ),
                    child: const Icon(Icons.remove,size: 15,),
                  ),
                ),
                Expanded(
                  child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        '1',
                        style: CustomTextStyle.titleTextStyle,
                      )),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        
                      backgroundColor: const MaterialStatePropertyAll(
                          CustomColor.appBackbroundColor),
                      iconColor: const MaterialStatePropertyAll(
                          CustomColor.whiteColor),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                        const CircleBorder(),
                      ),
                    ),
                    child: const Icon(Icons.add,size: 15,),
                  ),
                ),
              ],
            )
          ,
           const SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
