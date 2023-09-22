import 'package:flutter/material.dart';

import '../../../core/constants/custom_textstyle.dart';
import '../../auth/widgets/custom_auth_button.dart';
import 'custom_column_tile.dart';

class BookedTicketTile extends StatelessWidget {
  const BookedTicketTile({super.key,
  required this.index
  });
   final int index;
  @override
  Widget build(BuildContext context) {
       final deviceSize = MediaQuery.sizeOf(context);
    
    return SizedBox(
      // height: deviceSize.height,
       width: deviceSize.width*0.98,
      // ,
      child:  Card(
                      margin: EdgeInsets.symmetric(
                          horizontal: deviceSize.width * 0.05,
                          vertical: deviceSize.height * 0.03),
                      elevation: 20,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          SizedBox(
                             //  height: deviceSize.height,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Ticket ${index+1} of 3",
                                  style: CustomTextStyle.eventtitleTextStyle,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                            CustomColumTile(
                                    title: 'In Demand Radio live at Punch Tarmeys',
                                    subtitle: 'Event',
                                    deviceSize: deviceSize,
                                    ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 CustomColumTile(title: 'EARLY BIRD', subtitle: 'Ticket',
                                     deviceSize: deviceSize,
                                 ),
                                const SizedBox(
                                  height: 20,
                                ),
                                 CustomColumTile(
                                      deviceSize: deviceSize,
                                    title: 'Starts on : \n Sun, Dec-20 8:30 AM',
                                    subtitle: 'Date'),
                                const SizedBox(
                                  height: 20,
                                ),
                                 CustomColumTile(
                                      deviceSize: deviceSize,
                                    title: 'ET2023OL795150236', subtitle: 'Booking Reference'),
                                const SizedBox(
                                  height: 20,
                                ),
                                 CustomColumTile(
                                      deviceSize: deviceSize,
                                    title: 'EOL222-04053', subtitle: 'Ticket No'),
                                      const SizedBox(
                                  height: 20,
                                ), 
                                CustomAuthButton(onTap: () {}, text: 'Add to Calender'),
                                
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomAuthButton(onTap: () {}, text: 'Download Ticket'),
                                   
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
              )
      
    );
           
              }
}