import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';
import 'package:indemand_ticket_booking/routes/routes.gr.dart';

class PopularLocations extends StatelessWidget {
  const PopularLocations({super.key,
  required this.deviceSize
  });
 final Size deviceSize;
  @override
  Widget build(BuildContext context) {
    // return Container(
    //  height: deviceSize.height*0.35,
    //  width: deviceSize.width,
    // // color: Colors.red, 
    //  child: ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 5,
    //   itemBuilder: (context, index) {
    //    return Container(
    //     margin:const EdgeInsets.symmetric(horizontal: 20),
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //         //  color: Colors.amber,
    //       image: const DecorationImage(
    //         image: AssetImage(ImageConstant.dummyLocationImg,
    //         )
    //     ),),
    //    // height: deviceSize.height*0.3,
    //     width: deviceSize.width*0.4,
    //     child: Align(
    //       alignment: Alignment.bottomCenter,
    //       child: Text("London",style: CustomTextStyle.titleTextStyle,),
    //     ),
        
    //    );
    //  },),
     
    // );
  
  return SizedBox(
       height: deviceSize.height*0.35,
     
       child: ListView.builder(
  itemCount: 10,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) {

  
  return InkWell(
    onTap:() =>  AutoRouter.of(context).push(DetailedMostPopularRoute(title: 'London')),
    child: Column(
      children: [
        Container(
              height: deviceSize.height*0.30,
         width: deviceSize.width*0.5,
        margin:const EdgeInsets.symmetric(horizontal: 20),
          child: ClipRRect(
          
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
            ImageConstant.dummyLocationImg,
            fit: BoxFit.cover,
            ),
        ),
        ),
       const SizedBox(height: 2,),
         Align(
        alignment: Alignment.bottomCenter,
        child: Text("London",style: CustomTextStyle.titleTextStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        ),
      ),
      ],
    ),
  );
  
  },
)
     );
 
  
  }
}