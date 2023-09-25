import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/custom_textstyle.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/image_constant.dart';

class SearchEventTile extends StatelessWidget {
  const SearchEventTile({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.sizeOf(context);
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height: deviceSize.height*0.13,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
     
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CachedNetworkImage(imageUrl: ImageConstant.dummyNetworkImage),
          ),
        const  SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Spanish paella Party-Long Island",
                style: CustomTextStyle.labelTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 2,),
                  Text("Spanish paella Party-Long Island",
                style: CustomTextStyle.eventtitleTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
                 const SizedBox(height: 2,),
                    Text(" \$ 200",
                style: CustomTextStyle.labelTextStyle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  
  }
}
