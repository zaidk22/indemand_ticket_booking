



import 'package:flutter/material.dart';
import 'package:indemand_ticket_booking/presentation/core/constants/color_constants.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmer extends StatelessWidget {
  const CustomShimmer({
    Key? key,
    required this.child,
    required this.isEnable,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);
  final Widget child;
  final bool isEnable;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? CustomColor.containerColor,
      highlightColor: highlightColor ?? Colors.white60,
      enabled: isEnable,
      child: child,
    );
  }
}