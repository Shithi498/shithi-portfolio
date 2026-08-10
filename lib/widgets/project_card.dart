import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              project.image,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: theme.titleLarge,
                ),

                const SizedBox(height: 8),

                Text(project.subtitle),

                const SizedBox(height: 16),

                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: project.technologies
                      .map(
                        (e) => Chip(
                      label: Text(e),
                    ),
                  )
                      .toList(),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Details"),
                    ),

                    const SizedBox(width: 10),

                    OutlinedButton(
                      onPressed:
                      project.isPrivate
                          ? null
                          : () {},
                      child: const Text("GitHub"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}