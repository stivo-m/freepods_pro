import 'package:flutter/material.dart';

class ANCButton extends StatelessWidget {
  const ANCButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.icon,
    this.active = false,
  }) : super(key: key);

  final bool active;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: active ? Colors.white : Colors.blueGrey.shade800,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Icon(
                  color: !active ? Colors.white : Colors.blueGrey.shade800,
                  icon,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
