import 'package:flutter/material.dart';
import 'package:freepods_pro/domain/constants/strings.dart';
import 'package:freepods_pro/presentation/pages/manage/widgets/anc_button.dart';

class NoiseCancellation extends StatelessWidget {
  const NoiseCancellation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Colors.grey.shade900,
      ),
      child: Row(
        children: <Widget>[
          ANCButton(
            label: AppStrings.noiseCancellation,
            onTap: () {},
            icon: Icons.noise_aware,
          ),
          ANCButton(
            label: AppStrings.noiseCancellationOff,
            onTap: () {},
            icon: Icons.volume_mute_outlined,
            active: true,
          ),
          ANCButton(
            label: AppStrings.transparencyMode,
            onTap: () {},
            icon: Icons.noise_control_off_outlined,
          ),
        ],
      ),
    );
  }
}
