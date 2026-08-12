import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/project.dart';


// class ProjectDetailsPage extends StatelessWidget {
//   final Project project;
//
//   const ProjectDetailsPage({
//     super.key,
//     required this.project,
//   });
//
//   Future<void> openLiveUrl(String url) async {
//     final uri = Uri.parse(url);
//
//     if (!await launchUrl(
//       uri,
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw Exception('Could not launch $url');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context).textTheme;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(project.title),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset(
//               project.image,
//               width: double.infinity,
//               height: 250,
//            //   fit: BoxFit.cover,
//             ),
//
//             const SizedBox(height: 30),
//
//             Text(
//               project.title,
//               style: theme.displaySmall,
//             ),
//
//             const SizedBox(height: 10),
//
//             Text(
//               project.subtitle,
//               style: theme.titleMedium,
//             ),
//
//             const SizedBox(height: 25),
//
//             Text(
//               "Description",
//               style: theme.titleLarge,
//             ),
//
//             const SizedBox(height: 10),
//
//             Text(project.description),
//             const SizedBox(height: 10),
//             Text(
//               "Features",
//               style: theme.titleLarge,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: project.features.map((feature) {
//                 return Padding(
//                   padding: const EdgeInsets.only(bottom: 6),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text("• "),
//                       Expanded(
//                         child: Text(feature),
//                       ),
//                     ],
//                   ),
//                 );
//               }).toList(),
//             ),
//             if (project.liveUrl != null)
//             Text(
//               "Demo",
//               style: theme.titleLarge,
//             ),
//             // InkWell(
//             //   onTap: () {
//             //     if (project.liveUrl != null) {
//             //       openLiveUrl(project.liveUrl!);
//             //     }
//             //   },
//             //   child: Text(
//             //     project.liveUrl!,
//             //     style: const TextStyle(
//             //       color: Colors.blue,
//             //       decoration: TextDecoration.underline,
//             //     ),
//             //   ),
//             // ),
//             if (project.liveUrl != null)
//             TextButton.icon(
//               onPressed: () {
//                 if (project.liveUrl != null) {
//                   openLiveUrl(project.liveUrl!);
//                 }
//               },
//               icon: const Icon(Icons.play_circle_fill),
//               label: const Text("Watch Demo"),
//             ),
//
//             const SizedBox(height: 30),
//
//             Text(
//               "Technologies",
//               style: theme.titleLarge,
//             ),
//
//             const SizedBox(height: 15),
//
//             Wrap(
//               spacing: 10,
//               runSpacing: 10,
//               children: project.technologies
//                   .map(
//                     (tech) => Chip(
//                   label: Text(tech),
//                 ),
//               )
//                   .toList(),
//             ),
//
//             const SizedBox(height: 40),
// // if(project.liveUrl!=null)
// //             Row(
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () {},
// //                   child: const Text("Live Demo"),
// //                 ),
// //
// //                 const SizedBox(width: 15),
// //
// //                 OutlinedButton(
// //                   onPressed: project.isPrivate
// //                       ? null
// //                       : () {},
// //                   child: const Text("GitHub"),
// //                 ),
// //               ],
// //             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({
    super.key,
    required this.project,
  });

  Future<void> openUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0A1A),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Project Details",
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
           // padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Titles & Subtitles
                Text(
                  project.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  project.subtitle,
                  style: TextStyle(
                    color: const Color(0xFFB57EDC).withOpacity(0.9),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),

                // Main Image Display Container
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white.withOpacity(0.12)),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF7C3AED).withOpacity(0.15),
                        blurRadius: 35,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      project.image,
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // Action Buttons Bar
                Wrap(
                  spacing: 12,
                  runSpacing: 12,
                  children: [
                    if (project.liveUrl != null)
                      ElevatedButton.icon(
                        onPressed: () => openUrl(project.liveUrl!),
                        icon: const Icon(Icons.open_in_new, size: 16),
                        label: const Text("Live Demo"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF7C3AED),
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          elevation: 0,
                        ),
                      ),

                    // GitHub / Source Button
                    // OutlinedButton.icon(
                    //   onPressed: project.isPrivate
                    //       ? null
                    //       : () {
                    //     if (project.githubUrl != null) {
                    //       openUrl(project.githubUrl!);
                    //     }
                    //   },
                    //   icon: const Icon(Icons.code, size: 18),
                    //   label: Text(project.isPrivate ? "Private Repository" : "Source Code"),
                    //   style: OutlinedButton.styleFrom(
                    //     foregroundColor: Colors.white,
                    //     disabledForegroundColor: Colors.white38,
                    //     side: BorderSide(
                    //       color: project.isPrivate
                    //           ? Colors.white12
                    //           : Colors.white.withOpacity(0.2),
                    //     ),
                    //     padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 14),
                    //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 36),

                // Description Glass Card
                _buildSectionHeader("Overview"),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.03),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.08)),
                  ),
                  child: Text(
                    project.description,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 15,
                      height: 1.6,
                    ),
                  ),
                ),
                const SizedBox(height: 36),

                // Key Features List
                if (project.features.isNotEmpty) ...[
                  _buildSectionHeader("Key Features"),
                  const SizedBox(height: 16),
                  ...project.features.map((feature) => _buildFeatureItem(feature)),
                  const SizedBox(height: 36),
                ],

                // Technologies Stack
                _buildSectionHeader("Technologies Used"),
                const SizedBox(height: 16),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: project.technologies.map((tech) => _buildTechBadge(tech)).toList(),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        letterSpacing: -0.2,
      ),
    );
  }

  Widget _buildFeatureItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: const Color(0xFF7C3AED).withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.check,
              size: 12,
              color: Color(0xFFC4B5FD),
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white.withOpacity(0.85),
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTechBadge(String tech) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF1D1135).withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFF7C3AED).withOpacity(0.3),
        ),
      ),
      child: Text(
        tech,
        style: TextStyle(
          color: Colors.white.withOpacity(0.9),
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}