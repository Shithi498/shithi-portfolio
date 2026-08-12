import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/education.dart';



class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 80,
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [

          // =================================================
          // SECTION LABEL
          // =================================================

          // Container(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 14,
          //     vertical: 7,
          //   ),
          //
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(30),
          //
          //     color: const Color(0xFF8B5CF6)
          //         .withOpacity(0.08),
          //
          //     border: Border.all(
          //       color: const Color(0xFF8B5CF6)
          //           .withOpacity(0.20),
          //     ),
          //   ),
          //
          //   child: const Row(
          //     mainAxisSize: MainAxisSize.min,
          //
          //     children: [
          //
          //       Icon(
          //         Icons.work_outline_rounded,
          //         size: 15,
          //         color: Color(0xFFC4B5FD),
          //       ),
          //
          //       SizedBox(width: 8),
          //
          //       Text(
          //         "Experience",
          //         style: TextStyle(
          //           color: Color(0xFFC4B5FD),
          //           fontSize: 13,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
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
                  "Academic Qualifications",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 22),

          // =================================================
          // HEADING
          // =================================================

          // const Text(
          //   "Academic Qualifications",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 38,
          //     fontWeight: FontWeight.bold,
          //     letterSpacing: -0.8,
          //     height: 1.1,
          //   ),
          // ),

          const SizedBox(height: 10),

          // =================================================
          // SUBTITLE
          // =================================================



          const SizedBox(height: 42),

          // =================================================
          // EXPERIENCE GRID
          // =================================================

          LayoutBuilder(
            builder: (context, constraints) {

              final bool isDesktop =
                  constraints.maxWidth > 800;

              final int crossAxisCount =
              isDesktop ? 2 : 1;

              return GridView.builder(
                shrinkWrap: true,

                physics:
                const NeverScrollableScrollPhysics(),

                itemCount: education.length,

                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,

                  crossAxisSpacing: 24,

                  mainAxisSpacing: 24,

                  // IMPORTANT:
                  // Give the cards enough vertical space
                  mainAxisExtent:
                  isDesktop ? 180 : 150,
                ),

                itemBuilder: (context, index) {

                  return EducationCard(
                    experience: education[index],
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

class EducationCard extends StatelessWidget {
  final dynamic experience;

  const EducationCard({
    super.key,
    required this.experience,
  });

  @override
  Widget build(BuildContext context) {
    // -------------------------------------------------------
    // Extract description and convert it into bullet points
    // -------------------------------------------------------

    final String rawDescription =
        experience.description?.toString() ?? '';

    final List<String> responsibilities = rawDescription
        .split('*')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();

    return Container(
      padding: const EdgeInsets.all(26),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        // Background
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color(0xFF211038).withOpacity(0.95),
            const Color(0xFF11091F).withOpacity(0.98),
          ],
        ),

        // Border
        border: Border.all(
          color: const Color(0xFF8B5CF6).withOpacity(0.18),
        ),

        // Shadow
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7C3AED).withOpacity(0.10),
            blurRadius: 30,
            spreadRadius: -5,
            offset: const Offset(0, 12),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // =================================================
          // JOB TITLE
          // =================================================

          Text(
            experience.position ?? experience.company,

            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.w700,
              height: 1.2,
            ),
          ),

          const SizedBox(height: 10),

          // =================================================
          // COMPANY + DATE
          // =================================================

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Company
              if (experience.company != null)
                Flexible(
                  child: Text(
                    experience.company.toString(),

                    maxLines: 2,
                   // overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      color: Color(0xFFC4B5FD),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

              // Divider
              if (experience.company != null &&
                  experience.duration != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Container(
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF8B5CF6),
                    ),
                  ),
                ),

              // Date
              if (experience.duration != null)
                Flexible(
                  child: Text(
                    experience.duration.toString(),

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: TextStyle(
                      color: Colors.white.withOpacity(0.50),
                      fontSize: 13,
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 22),
          //
          // // =================================================
          // // ACCENT DIVIDER
          // // =================================================
          //
          // Container(
          //   height: 1,
          //   width: double.infinity,
          //   color: Colors.white.withOpacity(0.07),
          // ),
          //
          // const SizedBox(height: 20),

          // =================================================
          // RESPONSIBILITIES
          // =================================================

          Expanded(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: responsibilities.map(
                      (responsibility) {

                    return Padding(
                      padding: const EdgeInsets.only(
                        bottom: 15,
                      ),

                      child: Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          // ---------------------------------
                          // Purple bullet / indicator
                          // ---------------------------------

                          Container(
                            margin: const EdgeInsets.only(
                              top: 6,
                              right: 12,
                            ),

                            width: 7,
                            height: 7,

                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color(0xFFA78BFA),

                              boxShadow: [
                                BoxShadow(
                                  color: const Color(0xFF8B5CF6)
                                      .withOpacity(0.5),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),

                          // ---------------------------------
                          // Responsibility text
                          // ---------------------------------

                          Expanded(
                            child: Text(
                              responsibility,

                              style: TextStyle(
                                color: Colors.white.withOpacity(0.78),
                                fontSize: 13,
                                height: 1.55,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}