import 'package:flutter/cupertino.dart';

import '../core/constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      alignment: Alignment.center,
      child: Column(
        children: [
          Text(
            "© ${DateTime.now().year} ${AppConstants.name}",
          ),
          const SizedBox(height: 8),
          const Text(
            "Built with Flutter 💙",
          ),
        ],
      ),
    );
  }
}