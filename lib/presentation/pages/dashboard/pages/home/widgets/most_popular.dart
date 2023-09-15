
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
       height: deviceSize.height*0.4,
     
       child: ListView.builder(
  itemCount: 10,
  scrollDirection: Axis.horizontal,
  itemBuilder: (context, index) {
    return Container(
      height: deviceSize.height*0.4,
       width: deviceSize.width*0.5,
      margin:const EdgeInsets.symmetric(horizontal: 20),
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(15),
      image: const DecorationImage(image: AssetImage(ImageConstant.dummyCardImg)),
      
    ),
    child: Align(
      alignment: Alignment.bottomCenter,
      child: Text("InDemand Radio",style: CustomTextStyle.titleTextStyle,),
    ),
    );
  },
)
     );
  }
}