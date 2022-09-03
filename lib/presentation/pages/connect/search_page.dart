import 'package:flutter/material.dart';
import 'package:freepods_pro/domain/constants/assets.dart';
import 'package:freepods_pro/domain/constants/strings.dart';
import 'package:freepods_pro/presentation/pages/connect/widgets/radial_curves.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: RadialCurves(
              minRadius: 100,
              count: 5,
              child: SvgPicture.asset(
                AppAssets.bluetoothIconSvg,
                width: 60,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.6,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    AppStrings.scanningText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    AppStrings.scanningDescription,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
