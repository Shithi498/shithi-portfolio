import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String? subtitle;

  const SectionTitle({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.displayMedium,
        ),

        if (subtitle != null) ...[
          const SizedBox(height: 12),

          Text(
            subtitle!,
            style: theme.bodyLarge,
          ),
        ],
      ],
    );
  }
}