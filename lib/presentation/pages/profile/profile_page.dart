import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/profile/widgets/address_details.dart';
import 'package:indemand_ticket_booking/presentation/pages/profile/widgets/contact_info.dart';
import 'package:indemand_ticket_booking/presentation/pages/profile/widgets/personal_info.dart';
import 'package:indemand_ticket_booking/presentation/pages/profile/widgets/profile_image.dart';

import '../../core/constants/custom_textstyle.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text('Edit Profile', style: CustomTextStyle.appTitleTextStyle),
      ),
      body: ListView(
        children: const [
          ProfileImage(),
          SizedBox(height: 10,),
         PersonalInfo(),
        SizedBox(height: 10,),
        ContactInfo(),
              SizedBox(height: 10,),
        AddressDetails(),
        ],
      ),
    
    bottomNavigationBar: BottomAppBar(
      elevation: 0,
      color: CustomColor.appBackbroundColor,
      child:  ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange)
                  ),
                  onPressed: () {
                  
                }, 
               child: Text('Update',style: CustomTextStyle.labelTextStyle,)),
   
    ),
   
    );
  }
}
