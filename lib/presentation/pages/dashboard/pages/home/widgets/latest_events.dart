import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/presentation/routes/routes.gr.dart';


class LatestEvents extends StatelessWidget {
  const LatestEvents({super.key,
   required this.deviceSize});
  final Size deviceSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceSize.height*0.33,
    
      width: deviceSize.width,
     
     // color: Colors.amber,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            AutoRouter.of(context).push(const EventDetails());
          },
          child: Container(
             decoration: BoxDecoration(
          //  color: Colors.red,
          borderRadius: BorderRadius.circular(20)
              ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
          width: deviceSize.width*0.5,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: deviceSize.height*.2,
                     decoration: BoxDecoration(
            color: Colors.red,
          borderRadius: BorderRadius.circular(20)
              ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.asset(
                        ImageConstant.dummyCardImg,
                        
                      fit: BoxFit.cover,
                      ),
                    )),
        
                    Positioned(
                      right: -10,
                      top: -10,
                      child: IconButton(onPressed: () {
                      
                    }, icon: const Icon(Icons.share_rounded))),
        
              
                  
        
                
              
                ],
              ),
            
             Container(
                  //height: deviceSize.height*0.1,
                  width: double.infinity,
                 
                  decoration: const BoxDecoration(
                     color: Colors.white,
                   borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)) 
                  ) ,
                  child:  Container(
                    margin:const EdgeInsets.symmetric(horizontal: 10),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("In Demand Radio live at Punch Tarmeys",
                        style: CustomTextStyle.subtitleBlackTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        ), 
                  
                       const SizedBox(height: 10,),
                         Text("From Rs. 200",
                        style: CustomTextStyle.subtitleBlackTextStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                )
            ],
          ),
              
            ),
        );
      },));
  }
}