import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:porfolio_shithi/sections/project_details_page.dart';
import '../data/projects.dart';
import '../model/project.dart';

// class ProjectSection extends StatelessWidget {
//   const ProjectSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).textTheme;
//
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 24,
//         vertical: 80,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Projects",
//             style: theme.displayMedium,
//           ),
//
//           const SizedBox(height: 40),
//
//           GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemCount: projects.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 24,
//               mainAxisSpacing: 24,
//               childAspectRatio: 0.65,
//             ),
//             itemBuilder: (context, index) {
//               final project = projects[index];
//
//               return Card(
//
//                 clipBehavior: Clip.antiAlias,
//                 child: Column(
//                   crossAxisAlignment:
//                   CrossAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Image.asset(
//                         project.image,
//                         width: double.infinity,
//                       //  fit: BoxFit.cover,
//                       ),
//                     ),
//
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Column(
//                         crossAxisAlignment:
//                         CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             project.title,
//                           //  style: theme.titleLarge,
//                             style: TextStyle(fontSize: 12,),
//
//                           ),
//
//                           const SizedBox(height: 8),
//
//                          // Text(project.subtitle),
//
//                      //     const SizedBox(height: 12),
//
//                           // Text(
//                           //   project.description,
//                           //   maxLines: 3,
//                           //   overflow: TextOverflow.ellipsis,
//                           // ),
//                           //
//                           // const SizedBox(height: 16),
//
//                           // Wrap(
//                           //   spacing: 8,
//                           //   runSpacing: 8,
//                           //   children: project.technologies
//                           //       .map(
//                           //         (tech) => Chip(
//                           //       label: Text(tech),
//                           //     ),
//                           //   )
//                           //       .toList(),
//                           // ),
//
//                           const SizedBox(height: 20),
//
//                           Row(
//                             children: [
//                               ElevatedButton(
//                                 onPressed: () {
//                                   print("Button clicked");
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (_) => ProjectDetailsPage(
//                                           project: project,
//                                         ),
//                                       ),
//                                     );
//
//                                 },
//                                 style: ElevatedButton.styleFrom(
//                                   padding: const EdgeInsets.symmetric(
//                                     horizontal: 12,
//                                     vertical: 8,
//                                   ),
//                                   minimumSize: const Size(80, 36),
//                                   tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//                                 ),
//                                 child:
//                                 const Text("Details"),
//                               ),
//
//                               const SizedBox(width: 12),
//
//                               // OutlinedButton(
//                               //   onPressed: project.isPrivate
//                               //       ? null
//                               //       : () {},
//                               //   child:
//                               //   const Text("GitHub"),
//                               // ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'dart:ui';
import 'package:flutter/material.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 80,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: projects.length,
            separatorBuilder: (_, __) => const SizedBox(height: 80),
            itemBuilder: (context, index) {
              return FeaturedProjectCard(
                project: projects[index],
                isReversed: index % 2 != 0, // Alternate layout direction
              );
            },
          ),
        ],
      ),
    );
  }
}

class FeaturedProjectCard extends StatelessWidget {
  final Project project;
  final bool isReversed;

  const FeaturedProjectCard({
    super.key,
    required this.project,
    this.isReversed = false,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 900;

        if (!isDesktop) {
          return _buildMobileLayout(context);
        }

        return SizedBox(
          height: 380,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: isReversed
                    ? [
                  Expanded(child: _buildImageFrame()),
                  const SizedBox(width: 400), // Reserve space for content
                ]
                    : [
                  const SizedBox(width: 400), // Reserve space for content
                  Expanded(child: _buildImageFrame()),
                ],
              ),
              Positioned(
                left: isReversed ? null : 0,
                right: isReversed ? 0 : null,
                width: 520,
                child: _buildContent(context),
              ),
            ],
          ),
        );
      },
    );
  }

  // Desktop Left/Right Content Block
  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Featured Project",
          style: TextStyle(
            color: Color(0xFFB57EDC),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          project.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),

        // Floating Glass Description Box
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
            child: Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF201735).withOpacity(0.75),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Colors.white.withOpacity(0.12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,
                    offset: const Offset(0, 8),
                  ),
                ],
              ),
              child: Text(
                project.description,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.85),
                  fontSize: 14,
                  height: 1.6,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),

        // Action & Tech Row
        Row(
          children: [
            // View Details Button
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProjectDetailsPage(project: project),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_outward, size: 16),
              label: const Text("View Details"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                side: BorderSide(color: Colors.white.withOpacity(0.2)),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(width: 16),

            // Tech Chips
            Expanded(
              child: Wrap(
                spacing: 8,
                runSpacing: 6,
                children: project.technologies.take(3).map((tech) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.06),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      tech,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 11,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Right Side Project Screen Preview
  Widget _buildImageFrame() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF130E26),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.white.withOpacity(0.1),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: AspectRatio(
          aspectRatio: 16 / 10,
          child: Image.asset(
            project.image,
           // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  // Mobile Stacked Layout
  Widget _buildMobileLayout(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Featured Project",
          style: TextStyle(
            color: Color(0xFFB57EDC),
            fontSize: 13,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          project.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        _buildImageFrame(),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: const Color(0xFF201735).withOpacity(0.8),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
          child: Text(
            project.description,
            style: TextStyle(
              color: Colors.white.withOpacity(0.85),
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 16),
        OutlinedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProjectDetailsPage(project: project),
              ),
            );
          },
          icon: const Icon(Icons.arrow_outward, size: 16),
          label: const Text("View Details"),
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: BorderSide(color: Colors.white.withOpacity(0.2)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }
}

