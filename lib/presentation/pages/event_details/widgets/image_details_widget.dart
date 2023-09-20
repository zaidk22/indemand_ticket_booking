import 'package:flutter/material.dart';

import '../../../core/constants/image_constant.dart';

class EventImageWidget extends StatelessWidget {
  const EventImageWidget({super.key,
  required this.deviceSize
  });
  final Size deviceSize ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: deviceSize.height*0.4,
          
             child: Stack(
             children: [
              Image.asset(ImageConstant.dummyCardImg,
              fit: BoxFit.cover,
              width: double.infinity,
              ),
             Positioned(
              left: 20,
              top: 10,
              child: IconButton.outlined(
                  style: OutlinedButton.styleFrom(
           //  foregroundColor: Colors.white,
             backgroundColor: Colors.transparent, // Text color
                side: const BorderSide(color: Colors.white), 
              // Border color
              ),

                onPressed: () {
                  
                },
             icon: const Icon(Icons.arrow_back_ios),color: Colors.black,)),
           
              Positioned(
              right: 10,
              top: 10,
              child: IconButton.outlined(
                  style: OutlinedButton.styleFrom(
                     backgroundColor: Colors.transparent, // Text color
                side: const BorderSide(color: Colors.white),  // Border color
              ),
                onPressed: () {
                  
                },
             icon: const Icon(Icons.share),color: Colors.black,))
             ], 
             ),
           )
         ;
  }
}