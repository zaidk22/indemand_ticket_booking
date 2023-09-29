import 'package:accordion/accordion.dart';
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
    final ScrollController controller  =ScrollController();
    return Scaffold(
      backgroundColor: CustomColor.appBackbroundColor,
      appBar: AppBar(
        backgroundColor: CustomColor.appBackbroundColor,
        title: Text('Edit Profile', style: CustomTextStyle.appTitleTextStyle),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          // shrinkWrap: true,
          // controller: controller,
          // physics: const BouncingScrollPhysics(),
          children:  [
            const ProfileImage(),
            const SizedBox(height: 10,),
            Accordion(
              
               headerBorderColor: CustomColor.containerColor,
            headerBorderColorOpened: Colors.transparent,
            headerBackgroundColor: CustomColor.containerColor,
            // headerBorderWidth: 1,
            headerBackgroundColorOpened: Colors.orange,
            contentBackgroundColor: CustomColor.appBackbroundColor,
            contentBorderColor: Colors.green,
            contentBorderWidth: 3,
            contentHorizontalPadding: 20,
            scaleWhenAnimating: true,
            openAndCloseAnimation: true,
            headerPadding:
                const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              children: [
         AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.text_fields_rounded, color: Colors.white),
                header:  Text('Personal Info', style: CustomTextStyle.labelTextStyle),
                content:  SingleChildScrollView(
                  controller: controller,
                  // physics: NeverScrollableScrollPhysics(),
                  child: PersonalInfo(controller: controller)),
              ),
           AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.text_fields_rounded, color: Colors.white),
                header:  Text('Contact Info', style: CustomTextStyle.labelTextStyle),
                content:  const ContactInfo(),
              ),
                 AccordionSection(
                contentVerticalPadding: 20,
                leftIcon:
                    const Icon(Icons.text_fields_rounded, color: Colors.white),
                header:  Text('Address Details', style: CustomTextStyle.labelTextStyle),
                content:  AddressDetails(),
              ),
            ]),
          // PersonalInfo(),
         
          ],
        ),
      ),
    
    bottomNavigationBar: BottomAppBar(
      elevation: 0,
     //
      color: CustomColor.appBackbroundColor,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10
        ),
        child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)
                    ),
                    onPressed: () {
                    
                  }, 
                 child: Text('Update',style: CustomTextStyle.subtitleBlackMinTextStyle,)),
      ),
   
    ),
   
    );
  }
}
