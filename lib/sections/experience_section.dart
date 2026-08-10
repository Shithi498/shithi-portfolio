// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../data/experience.dart';
//
// class ExperienceSection extends StatelessWidget {
//   const ExperienceSection({super.key});
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
//             "Experience",
//             style: theme.displayMedium,
//           ),
//           const SizedBox(height: 40),
//
//           ...experiences.map(
//                 (experience) => Card(
//               margin: const EdgeInsets.only(bottom: 24),
//               child: Padding(
//                 padding: const EdgeInsets.all(24),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       experience.position,
//                       style: theme.titleLarge,
//                     ),
//                     const SizedBox(height: 8),
//
//                     Text(
//                       experience.company,
//                       style: theme.bodyLarge,
//                     ),
//
//                     const SizedBox(height: 8),
//
//                     Text(
//                       experience.duration,
//                       style: theme.bodyMedium,
//                     ),
//
//                     const SizedBox(height: 20),
//
//                     Text(
//                       experience.description,
//                       style: theme.bodyLarge,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../data/experience.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

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
          // Section Heading
          const Text(
            "Work Experience",
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(height: 40),

          // Responsive Grid (2 columns on Desktop, 1 on Mobile)
          LayoutBuilder(
            builder: (context, constraints) {
              final isDesktop = constraints.maxWidth > 800;
              final crossAxisCount = isDesktop ? 2 : 1;

              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: experiences.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  mainAxisExtent: isDesktop ? 180 : 210,
                ),
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    experience: experiences[index],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  final dynamic experience;

  const ExperienceCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withOpacity(0.08),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF1D1135).withOpacity(0.95),
            const Color(0xFF0F081D).withOpacity(0.95),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B2FB3).withOpacity(0.12),
            blurRadius: 30,
            spreadRadius: -2,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            // Left 3D Icon / Image Frame
            // SizedBox(
            //   width: 80,
            //   height: 80,
            //   child: _buildExperienceIcon(experience),
            // ),
            // const SizedBox(width: 20),

            // Content Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Title
                  Text(
                    experience.position ?? experience.company,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),

                  // Description
                  Text(
                    experience.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontSize: 12,
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 14),

                  // Learn More Button
                  // OutlinedButton(
                  //   onPressed: () {
                  //     // Handle Learn More tap
                  //   },
                  //   style: OutlinedButton.styleFrom(
                  //     foregroundColor: Colors.white,
                  //     backgroundColor: const Color(0xFF281845).withOpacity(0.6),
                  //     side: BorderSide(
                  //       color: const Color(0xFF7C3AED).withOpacity(0.5),
                  //     ),
                  //     padding: const EdgeInsets.symmetric(
                  //       horizontal: 18,
                  //       vertical: 10,
                  //     ),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  //     minimumSize: Size.zero,
                  //   ),
                  //   child: const Text(
                  //     "LEARN MORE",
                  //     style: TextStyle(
                  //       fontSize: 10,
                  //       fontWeight: FontWeight.w600,
                  //       letterSpacing: 0.8,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildExperienceIcon(dynamic exp) {
    // Uses icon image if present, or defaults to a stylized vector icon
    try {
      if (exp.icon != null && exp.icon.toString().isNotEmpty) {
        return Image.asset(
          exp.icon,
          fit: BoxFit.contain,
        );
      }
    } catch (_) {}

    return const Icon(
      Icons.auto_awesome_rounded,
      size: 42,
      color: Color(0xFFC4B5FD),
    );
  }
}