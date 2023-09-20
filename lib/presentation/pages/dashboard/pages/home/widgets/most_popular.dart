
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/constants/custom_textstyle.dart';
import '../../../../../core/constants/image_constant.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({
    super.key,
    required this.deviceSize,
  });

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: deviceSize.height*0.35,
     
       child: ListView.builder(
  itemCount: 10,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) {

  
  return Column(
    children: [
      Container(
            height: deviceSize.height*0.30,
       width: deviceSize.width*0.5,
      margin:const EdgeInsets.symmetric(horizontal: 20),
        child: ClipRRect(
        
          borderRadius: BorderRadius.circular(8.0),
          child: CachedNetworkImage(
            imageUrl: 
           ImageConstant.dummyNetworkImage,
          fit: BoxFit.cover,
          ),
      ),
      ),
     const SizedBox(height: 2,),
       Align(
      alignment: Alignment.bottomCenter,
      child: Text("InDemand Radio",style: CustomTextStyle.titleTextStyle,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      ),
    ),
    ],
  );
  
  },
)
     );
 
 
  }
}