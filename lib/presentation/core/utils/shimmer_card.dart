







import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:shimmer/shimmer.dart';

import 'custom_shimmer.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // margin: const EdgeInsets.all(20),
      child: Opacity(
        opacity: 0.8,
        child: Shimmer.fromColors(child: Container(
          height: 200,
          
        ), baseColor: Colors.black12, highlightColor: Colors.red),
      ));
  }
}
