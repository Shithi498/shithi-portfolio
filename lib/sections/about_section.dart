import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class AboutSection extends StatelessWidget {
//   const AboutSection({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final textTheme = Theme.of(context).textTheme;
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
//             "About Me",
//             style: textTheme.displayMedium,
//           ),
//           const SizedBox(height: 30),
//           Text(
//             "I completed my BSc in Computer Science and Engineering (CSE) from American International University-Bangladesh (AIUB). I am a Flutter Developer passionate about building high-quality, cross-platform mobile applications.\n\n"
//
//                 "My journey into software development began with my first Java project during university, which sparked my interest in programming. As I continued learning data structures and algorithms, my passion for problem-solving and software development grew even stronger.\n\n"
//
//                 "I have experience developing enterprise and consumer mobile applications using Flutter. My work includes translating high-fidelity Figma designs into pixel-perfect user interfaces, integrating RESTful APIs and Odoo JSON-RPC services, implementing Firebase features, and maintaining clean, scalable architecture.\n\n"
//
//                 "Throughout my career, I have worked on healthcare, workforce management, enterprise communication, retail, and e-commerce applications. These projects have strengthened both my technical expertise and problem-solving abilities while giving me experience collaborating on real-world software solutions.\n\n"
//
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          // =====================================================
          // SECTION LABEL
          // =====================================================

          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white.withOpacity(0.12),
              ),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.circle,
                  size: 6,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 35),

          // =====================================================
          // MAIN HEADING
          // =====================================================
          //
          // ConstrainedBox(
          //   constraints: const BoxConstraints(
          //     maxWidth: 900,
          //   ),
          //   child: Text(
          //     "I'm a Flutter Developer passionate about "
          //         "building high-quality mobile applications",
          //     textAlign: TextAlign.center,
          //     style: theme.textTheme.displayMedium?.copyWith(
          //       fontWeight: FontWeight.bold,
          //       height: 1.15,
          //     ),
          //   ),
          // ),
          //
          // const SizedBox(height: 70),

          // =====================================================
          // IMAGE + CONTENT
          // =====================================================

          LayoutBuilder(
            builder: (context, constraints) {

              // -----------------------------
              // MOBILE
              // -----------------------------

              if (constraints.maxWidth < 700) {
                return Column(
                  children: [
                    _buildImage(),

                    const SizedBox(height: 40),

                    _buildContent(context),
                  ],
                );
              }

              // -----------------------------
              // DESKTOP / TABLET
              // -----------------------------

              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // IMAGE
                  Expanded(
                    flex: 5,
                    child:
                    _buildImage(),
                  ),

                  const SizedBox(width: 70),

                  // TEXT
                  Expanded(
                    flex: 5,
                    child: _buildContent(context),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  // ===========================================================
  // IMAGE
  // ===========================================================

  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        width: 60,
        height: 340, // 👈 make image shorter
        child: Image.asset(
          "assets/profile_img.jpeg",
        //  fit: BoxFit.cover,

          // If image is missing, don't crash the whole page.
          errorBuilder: (context, error, stackTrace) {
            return Container(
              color: const Color(0xFF1A1A1A),
              child: const Center(
                child: Icon(
                  Icons.person,
                  size: 60,
                  color: Colors.white24,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // ===========================================================
  // CONTENT
  // ===========================================================

  Widget _buildContent(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // Small heading
        // Text(
        //   "To Build Meaningful",
        //   style: theme.textTheme.headlineMedium?.copyWith(
        //     fontWeight: FontWeight.bold,
        //     height: 1.1,
        //   ),
        // ),
        //
        // const SizedBox(height: 4),
        //
        // // Highlighted heading
        // Text(
        //   "Mobile Applications",
        //   style: theme.textTheme.headlineMedium?.copyWith(
        //     fontWeight: FontWeight.w300,
        //     height: 1.1,
        //   ),
        // ),

        const SizedBox(height: 35),

        // Vertical divider + text
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              width: 1,
              height: 170,
              color: Colors.white.withOpacity(0.15),
            ),

            const SizedBox(width: 25),

            Expanded(
              child:Text(
                "I completed my BSc in Computer Science and Engineering (CSE) "
                    "from American International University-Bangladesh.\n\n "
                    "My journey into coding started when I built my first project in Java for my semester, which ignited my curiosity in programming."
                    " As I explored data structures and algorithms, my interest in coding deepened further. I have experience "
                    "in app development and have worked on several projects, which helped "
                    "me improve my technical and problem-solving skills.\n\n"
                    "I enjoy writing clean and easy-to-maintain code that is simple to "
                    "understand and troubleshoot. I am always interested in learning new "
                    "technologies and frameworks to improve my skills and stay updated.\n\n"
                    "I am a motivated and hardworking person with a strong work ethic. "
                    "I can work well both independently and as part of a team.",
                style: theme.textTheme.bodyLarge?.copyWith(
                  height: 1.7,
                  color: Colors.white70,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 40),

        // =====================================================
        // ABOUT BUTTON
        // =====================================================

        // Align(
        //   alignment: Alignment.centerRight,
        //   child: Container(
        //     width: 110,
        //     height: 110,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       border: Border.all(
        //         color: Colors.white.withOpacity(0.12),
        //       ),
        //     ),
        //     child: Material(
        //       color: Colors.transparent,
        //       child: InkWell(
        //         borderRadius: BorderRadius.circular(100),
        //         onTap: () {
        //           // You can navigate to a full About page here.
        //         },
        //         child: const Column(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [
        //
        //             Text(
        //               "↗",
        //               style: TextStyle(
        //                 fontSize: 28,
        //               ),
        //             ),
        //
        //             SizedBox(height: 5),
        //
        //             Text(
        //               "About Me",
        //               style: TextStyle(
        //                 fontWeight: FontWeight.w600,
        //                 fontSize: 13,
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}