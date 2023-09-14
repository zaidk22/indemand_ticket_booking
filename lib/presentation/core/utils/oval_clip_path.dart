import 'package:flutter/material.dart';

class RectangularClipperWithOvalBottom extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // Define the top-left corner of the rectangle
    path.lineTo(0, size.height * 0.75);

    // Define the left edge of the rectangle
    path.lineTo(0, size.height);

    // Define the bottom-left corner of the rectangle with an outward oval shape
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width / 2,
      size.height * 0.75,
    );

    // Define the bottom-right corner of the rectangle with an outward oval shape
    path.quadraticBezierTo(
      (3 * size.width) / 4,
      size.height * 0.5,
      size.width,
      size.height * 0.75,
    );

    // Define the right edge of the rectangle
    path.lineTo(size.width, size.height * 0.75);

    // Close the path to connect the right and left edges
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
