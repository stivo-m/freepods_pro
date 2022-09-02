import 'dart:math';

import 'package:flutter/material.dart';
import 'package:freepods_pro/presentation/pages/connect/widgets/radial_painter.dart';

class RadialCurves extends StatelessWidget {
  const RadialCurves({
    Key? key,
    required this.minRadius,
    this.count = 7,
    this.child,
  }) : super(key: key);

  final int count;
  final double minRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: MediaQuery.of(context).size.height * 0.6,
      child: Stack(
        children: <Widget>[
          ...List<Widget>.generate(
            count,
            (int index) => Align(
              alignment: Alignment.center,
              child: Transform.rotate(
                angle: pi,
                child: ClipPath(
                  clipper: RadialPainter(),
                  child: Container(
                    height: minRadius * index,
                    width: minRadius * index,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.transparent,
                      border: Border.all(
                        width: 2,
                        color: Colors.blueGrey.withOpacity(0.2),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (child != null)
            Align(
              alignment: Alignment.center,
              child: child,
            )
        ],
      ),
    );
  }
}
