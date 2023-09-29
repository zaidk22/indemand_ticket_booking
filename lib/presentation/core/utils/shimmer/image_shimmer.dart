import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:shimmer/shimmer.dart';


class ImageShimmer extends StatelessWidget {
  const ImageShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Shimmer.fromColors(
      baseColor: Colors.grey[200]!, // Change to your preferred color
      highlightColor: Colors.grey[300]!, // Change to your preferred color
      child: Container(
       // width: double.infinity,
     //   height: double.infinity,
        color: CustomColor.appBackbroundColor, // Background color of the shimmer effect
      ),
    );
  }
}