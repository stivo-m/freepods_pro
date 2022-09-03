import 'package:flutter/material.dart';

class RadialPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path(); // use for shape your container
    path.lineTo(0.0, 15.0);
    path.quadraticBezierTo(size.width * 1, 0.0, size.width, 15.0);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
