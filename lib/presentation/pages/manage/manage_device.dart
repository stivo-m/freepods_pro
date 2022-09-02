import 'package:flutter/material.dart';
import 'package:freepods_pro/domain/constants/assets.dart';
import 'package:freepods_pro/domain/constants/strings.dart';
import 'package:freepods_pro/presentation/pages/manage/widgets/noise_canellation.dart';

class ManageDevice extends StatelessWidget {
  const ManageDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 30),
              Center(
                child: Image.asset(
                  AppAssets.oraimoFreepodsPro,
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                AppStrings.ownerText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontSize: 20,
                    ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green.shade500,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    AppStrings.connectedTo,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const NoiseCancellation(),
            ],
          ),
        ),
      ),
    );
  }
}
