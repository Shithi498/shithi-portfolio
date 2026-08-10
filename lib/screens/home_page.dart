import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/constants.dart';
import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/experience_section.dart';
import '../sections/footer.dart';
import '../sections/hero_section.dart';
import '../sections/project_section.dart';
import '../sections/skills_section.dart';
import '../widgets/navbar.dart';


import 'dart:ui';






class HomePage extends StatelessWidget {
  HomePage({super.key});

  final homeKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final experienceKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();

  // ============================================================
  // THEME COLORS
  // ============================================================

  static const Color backgroundColor = Color(0xFF10051F);
  static const Color darkPurple = Color(0xFF17082B);
  static const Color purple = Color(0xFF7C3AED);
  static const Color brightPurple = Color(0xFFA855F7);
  static const Color lightPurple = Color(0xFFC084FC);

  void scrollToSection(GlobalKey key) {
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      body: Stack(
        children: [

          // =====================================================
          // MAIN BACKGROUND
          // =====================================================

          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF120522),
                  Color(0xFF10051F),
                  Color(0xFF0D0418),
                ],
              ),
            ),
          ),

          // =====================================================
          // TOP PURPLE GLOW
          // =====================================================

          Positioned(
            top: -180,
            left: -120,
            child: _Glow(
              size: 500,
              color: brightPurple,
              opacity: 0.20,
              blur: 120,
            ),
          ),

          // =====================================================
          // TOP RIGHT PURPLE GLOW
          // =====================================================

          Positioned(
            top: 100,
            right: -220,
            child: _Glow(
              size: 500,
              color: purple,
              opacity: 0.16,
              blur: 130,
            ),
          ),

          // =====================================================
          // MIDDLE GLOW
          // =====================================================

          Positioned(
            top: 1000,
            left: -220,
            child: _Glow(
              size: 500,
              color: brightPurple,
              opacity: 0.12,
              blur: 140,
            ),
          ),

          // =====================================================
          // LOWER RIGHT GLOW
          // =====================================================

          Positioned(
            top: 1800,
            right: -200,
            child: _Glow(
              size: 550,
              color: purple,
              opacity: 0.12,
              blur: 140,
            ),
          ),

          // =====================================================
          // MAIN CONTENT
          // =====================================================

          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  // Space for navbar
                  const SizedBox(height: 80),

                  Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: AppConstants.maxWidth,
                      ),

                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,

                        children: [

                          // =================================================
                          // HERO
                          // =================================================

                          HeroSection(
                            key: homeKey,
                          ),

                          // =================================================
                          // ABOUT
                          // =================================================

                          AboutSection(
                            key: aboutKey,
                          ),

                          // =================================================
                          // SKILLS
                          // =================================================

                          SkillsSection(
                            key: skillsKey,
                          ),

                          // =================================================
                          // EXPERIENCE
                          // =================================================

                          ExperienceSection(
                            key: experienceKey,
                          ),

                          // =================================================
                          // PROJECTS
                          // =================================================

                          ProjectSection(
                            key: projectsKey,
                          ),

                          // =================================================
                          // CONTACT
                          // =================================================

                          ContactSection(
                            key: contactKey,
                          ),

                          // =================================================
                          // FOOTER
                          // =================================================

                          const Footer(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // =====================================================
          // FLOATING NAVBAR
          // =====================================================

          Positioned(
            top: 0,
            left: 0,
            right: 0,

            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 18,
                  sigmaY: 18,
                ),

                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor.withOpacity(0.78),

                    border: Border(
                      bottom: BorderSide(
                        color: brightPurple.withOpacity(0.12),
                      ),
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: purple.withOpacity(0.08),
                        blurRadius: 20,
                      ),
                    ],
                  ),

                  child: Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: AppConstants.maxWidth,
                      ),

                      child: NavBar(
                        onItemSelected: (title) {

                          switch (title) {

                            case "Home":
                              scrollToSection(homeKey);
                              break;

                            case "About":
                              scrollToSection(aboutKey);
                              break;

                            case "Skills":
                              scrollToSection(skillsKey);
                              break;

                            case "Experience":
                              scrollToSection(experienceKey);
                              break;

                            case "Projects":
                              scrollToSection(projectsKey);
                              break;

                            case "Contact":
                              scrollToSection(contactKey);
                              break;
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _Glow extends StatelessWidget {
  final double size;
  final Color color;
  final double opacity;
  final double blur;

  const _Glow({
    required this.size,
    required this.color,
    required this.opacity,
    required this.blur,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Container(
        width: size,
        height: size,

        decoration: BoxDecoration(
          shape: BoxShape.circle,

          color: color.withOpacity(opacity),

          boxShadow: [
            BoxShadow(
              color: color.withOpacity(opacity),
              blurRadius: blur,
              spreadRadius: 40,
            ),
          ],
        ),

        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: blur,
            sigmaY: blur,
          ),

          child: const SizedBox(),
        ),
      ),
    );
  }
}



