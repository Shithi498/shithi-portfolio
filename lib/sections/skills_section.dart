import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/skills.dart';
//
// class SkillsSection extends StatelessWidget {
//   const SkillsSection({super.key});
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
//             "Skills",
//             style: textTheme.displayMedium,
//           ),
//           const SizedBox(height: 40),
//
//           ...skillCategories.map(
//                 (category) => Padding(
//               padding: const EdgeInsets.only(bottom: 30),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     category.title,
//                     style: textTheme.titleLarge,
//                   ),
//                   const SizedBox(height: 16),
//
//                   Wrap(
//                     spacing: 12,
//                     runSpacing: 12,
//                     children: category.skills
//                         .map(
//                           (skill) => Chip(
//                         label: Text(skill),
//                       ),
//                     )
//                         .toList(),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final skillCategories = [
      _SkillCategory(
        title: "Mobile Development",
        icon: Icons.phone_android,
        skills: [
          "Flutter",
          "Dart",
          "Android",
          "Java",
        ],
      ),

      _SkillCategory(
        title: "State Management",
        icon: Icons.account_tree,
        skills: [
          "Provider",
          "GetX",
          "MVC",
          "MVVM",
        ],
      ),

      _SkillCategory(
        title: "Backend & APIs",
        icon: Icons.cloud,
        skills: [
          "REST API",
          "JSON-RPC",
          "Odoo",
          "NestJS",
        ],
      ),

      _SkillCategory(
        title: "Firebase",
        icon: Icons.local_fire_department,
        skills: [
          "Firebase Auth",
          "Firestore",
          "Realtime Database",
          "Storage",
          "FCM",
        ],
      ),

      _SkillCategory(
        title: "Database",
        icon: Icons.storage,
        skills: [
          "PostgreSQL",
          "MySQL",
          "SQLite",
        ],
      ),

      _SkillCategory(
        title: "Tools & Development",
        icon: Icons.build,
        skills: [
          "Git",
          "GitHub",
          "Android Studio",
          "VS Code",
          "Postman",
        ],
      ),
    ];

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
                  "Professional Skills",
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

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 900,
            ),
            child: Text(
              "I Craft Powerful Mobile Experiences",
              textAlign: TextAlign.center,
              style: theme.textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
                height: 1.15,
              ),
            ),
          ),

          const SizedBox(height: 5),

          // =====================================================
          // SECOND HEADING
          // =====================================================

          Text(
            "With Flutter",
            textAlign: TextAlign.center,
            style: theme.textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.15,
              color: Colors.transparent,
              shadows: [
                Shadow(
                  offset: const Offset(0, 0),
                  blurRadius: 0,
                  color: Colors.white.withOpacity(0.7),
                ),
              ],
            ),
          ),

          const SizedBox(height: 70),

          // =====================================================
          // SKILL CATEGORIES
          // =====================================================

          LayoutBuilder(
            builder: (context, constraints) {

              // -----------------------------
              // MOBILE
              // -----------------------------

              if (constraints.maxWidth < 600) {
                return Column(
                  children: skillCategories.map(
                        (category) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          bottom: 25,
                        ),
                        child: _SkillCategoryCard(
                          category: category,
                          size: 170,
                        ),
                      );
                    },
                  ).toList(),
                );
              }

              // -----------------------------
              // TABLET / DESKTOP
              // -----------------------------

              return Wrap(
                alignment: WrapAlignment.center,
                spacing: 25,
                runSpacing: 30,
                children: skillCategories.map(
                      (category) {
                    return _SkillCategoryCard(
                      category: category,
                      size: 230,
                    );
                  },
                ).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}


// =============================================================
// SKILL CATEGORY MODEL
// =============================================================

class _SkillCategory {
  final String title;
  final IconData icon;
  final List<String> skills;

  const _SkillCategory({
    required this.title,
    required this.icon,
    required this.skills,
  });
}


// =============================================================
// SKILL CATEGORY CARD
// =============================================================

class _SkillCategoryCard extends StatelessWidget {
  final _SkillCategory category;
  final double size;

  const _SkillCategoryCard({
    required this.category,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,

      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: const Color(0xFF111111),

        border: Border.all(
          color: Colors.white.withOpacity(0.08),
          width: 1,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 25,
            spreadRadius: 2,
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // =================================================
            // CATEGORY ICON
            // =================================================

            Icon(
              category.icon,
              size: 32,
              color: Colors.white,
            ),

            const SizedBox(height: 10),

            // =================================================
            // CATEGORY NAME
            // =================================================

            Text(
              category.title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // =================================================
            // SKILLS
            // =================================================

            Flexible(
              child: Text(
                category.skills.join(" • "),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  height: 1.4,
                  color: Colors.white.withOpacity(0.65),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================
// SKILL MODEL
// =============================================================

class _SkillItem {
  final String name;
  final String percentage;
  final IconData icon;

  const _SkillItem({
    required this.name,
    required this.percentage,
    required this.icon,
  });
}

// =============================================================
// SKILL CIRCLE
// =============================================================

class _SkillCircle extends StatelessWidget {
  final _SkillItem skill;
  final double size;

  const _SkillCircle({
    required this.skill,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        color: const Color(0xFF111111),

        border: Border.all(
          color: Colors.white.withOpacity(0.08),
          width: 1,
        ),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),

      child: Padding(
        padding: const EdgeInsets.all(25),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Icon
            Icon(
              skill.icon,
              size: size * 0.18,
              color: Colors.white,
            ),

            const SizedBox(height: 12),

            // Skill name
            Text(
              skill.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 5),

            // Percentage
            Text(
              skill.percentage,
              style: TextStyle(
                fontSize: size * 0.14,
                fontWeight: FontWeight.w300,
                color: Colors.white.withOpacity(0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }
}