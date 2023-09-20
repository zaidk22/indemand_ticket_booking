
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/pages/dashboard/pages/my_accounts/widgets/info_card.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';

class MyAccountsPage extends StatelessWidget {
  const MyAccountsPage({super.key});

  @override
  Widget build(BuildContext context) {
     return  Container(
      height: MediaQuery.sizeOf(context).height,
      color: CustomColor.appBackbroundColor,
       child:  ListView(
        shrinkWrap: true,
         children: [
           Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              
             Container(
              margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 20),
               child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                  children: [
                     const CircleAvatar(
                    radius: 30,
                   child:Icon(Icons.person) 
                      ),
                  const SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Dummy Name",style: CustomTextStyle.titleTextStyle,),
                         const  SizedBox(height: 2,),
                          Text("dummy@gmail.com",style:CustomTextStyle.subtitleTextStyle,)
                        ],
                      ),

                  ],
                 ),
                      IconButton(onPressed: () {
                        
                      }, icon: const Icon(Icons.settings,color: Colors.white,))
                  
                ],
               ),
             ),
              
           
            InfoCard(icon: Icons.person,
             title: "Profile",
             subtitle: "Change profile",
             onTap: () {
              
             },),
                const SizedBox(height: 20,),

            InfoCard(icon: Icons.movie,
             title: "Tickets",
             subtitle: "All the tickets are stored here",
             onTap: () {
              
             },),
   const SizedBox(height: 20,),

            InfoCard(icon: Icons.money,
             title: "Refund ",
             subtitle: "All the refund details are stored here ",
             onTap: () {
              
             },),
   const SizedBox(height: 20,),

            InfoCard(icon: Icons.question_answer,
             title: "FAQ",
             subtitle: "frequently asked questions",
             onTap: () {
              
             },),

           
              const SizedBox(height: 20,),

            InfoCard(icon: Icons.help,
             title: "Help",
             subtitle: "Any questions or issues? We are here to help",
             onTap: () {
              
             },),

                   const SizedBox(height: 20,),

            InfoCard(icon: Icons.logout,
             title: "Logout",
             subtitle: "Logout",
             onTap: () {
              AutoRouter.of(context).push(LoginRoute());
             },),

             
             const SizedBox(height: 10,),
             Text("App version 1.0.0 ",style: CustomTextStyle.subtitleTextStyle,)
            ],
           ),
         ],
       ),
     );
  }


  
}