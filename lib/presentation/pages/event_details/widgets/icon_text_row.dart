


import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';

class IconTextRow extends StatelessWidget {
  final IconData iconData;
  final String text;
  final TextStyle textStyle;

const IconTextRow({super.key, 
    required this.iconData,
    required this.text,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 5),
        Icon(
          iconData,
          size: 15,
          color: CustomColor.appBackbroundColor,
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Text(
            text,
            style: textStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
