
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/constants.dart';

// class ContactSection extends StatelessWidget {
// const ContactSection({super.key});
// Future<void> launchEmail() async {
//   final Uri emailUri = Uri(
//     scheme: 'mailto',
//     path: AppConstants.email,
//     query: 'subject=Flutter Developer Opportunity',
//   );
//
//   if (!await launchUrl(emailUri)) {
//     throw Exception('Could not launch email');
//   }
// }
//
// Future<void> launchPhone() async {
//   final Uri phoneUri = Uri(
//     scheme: 'tel',
//     path: AppConstants.phone,
//   );
//
//   if (!await launchUrl(phoneUri)) {
//     throw Exception('Could not launch dialer');
//   }
// }
//
// Future<void> launchGitHub() async {
//   final Uri url = Uri.parse(AppConstants.github);
//
//   if (!await launchUrl(
//     url,
//     mode: LaunchMode.externalApplication,
//   )) {
//     throw Exception('Could not launch GitHub');
//   }
// }
//
// Future<void> launchLinkedIn() async {
//   final Uri url = Uri.parse(AppConstants.linkedin);
//
//   if (!await launchUrl(
//     url,
//     mode: LaunchMode.externalApplication,
//   )) {
//     throw Exception('Could not launch LinkedIn');
//   }
// }
// @override
// Widget build(BuildContext context) {
// final theme = Theme.of(context).textTheme;
//
// return Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 24,
// vertical: 80,
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// "Contact",
// style: theme.displayMedium,
// ),
//
// const SizedBox(height: 40),
//
// Card(
// child: Padding(
// padding: const EdgeInsets.all(30),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.start,
// children: [
// Text(
// "Let's work together!",
// style: theme.titleLarge,
// ),
//
// const SizedBox(height: 20),
//
// Text(
// "I'm always open to discussing Flutter development opportunities, freelance work, or interesting projects.",
// style: theme.bodyLarge,
// ),
//
// const SizedBox(height: 30),
//
// ListTile(
//   onTap: launchEmail,
// leading: const Icon(Icons.email),
// title: const Text("Email"),
// subtitle: Text(AppConstants.email),
// ),
//
//   ListTile(
//     onTap: launchPhone,
//     leading: const Icon(Icons.phone),
//     title: const Text("Phone"),
//     subtitle: Text(AppConstants.phone),
//   ),
//
// ListTile(
// leading: const Icon(Icons.location_on),
// title: const Text("Location"),
// subtitle: Text(AppConstants.location),
// ),
//
// ListTile(
//   onTap: launchGitHub,
// leading: const Icon(Icons.code),
// title: const Text("GitHub"),
// subtitle: Text(AppConstants.github),
// ),
//
// ListTile(
//   onTap: launchLinkedIn,
// leading: const Icon(Icons.business),
// title: const Text("LinkedIn"),
// subtitle: Text(AppConstants.linkedin),
// ),
// ],
// ),
// ),
// ),
// ],
// ),
// );
// }
// }


class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  // ============================================================
  // LAUNCH EMAIL
  // ============================================================

  Future<void> launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: AppConstants.email,
      queryParameters: {
        'subject': 'Flutter Developer Opportunity',
      },
    );

    if (!await launchUrl(emailUri)) {
      throw Exception('Could not launch email');
    }
  }

  // ============================================================
  // LAUNCH PHONE
  // ============================================================

  Future<void> launchPhone() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: AppConstants.phone,
    );

    if (!await launchUrl(phoneUri)) {
      throw Exception('Could not launch dialer');
    }
  }

  // ============================================================
  // LAUNCH GITHUB
  // ============================================================

  Future<void> launchGitHub() async {
    final Uri url = Uri.parse(AppConstants.github);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch GitHub');
    }
  }

  // ============================================================
  // LAUNCH LINKEDIN
  // ============================================================

  Future<void> launchLinkedIn() async {
    final Uri url = Uri.parse(AppConstants.linkedin);

    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch LinkedIn');
    }
  }

  // ============================================================
  // CONTACT ITEM
  // ============================================================

  Widget _contactItem({
    required IconData icon,
    required String title,
    required String value,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.025),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withOpacity(0.08),
          ),
        ),
        child: Row(
          children: [

            // ICON
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFFA855F7)
                    .withOpacity(0.10),
                border: Border.all(
                  color: const Color(0xFFA855F7)
                      .withOpacity(0.20),
                ),
              ),
              child: Icon(
                icon,
                size: 19,
                color: const Color(0xFFC084FC),
              ),
            ),

            const SizedBox(width: 14),

            // TEXT
            Expanded(
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.white54,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    value,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            if (onTap != null)
              Icon(
                Icons.arrow_outward,
                size: 16,
                color: Colors.white.withOpacity(0.4),
              ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // SOCIAL BUTTON
  // ============================================================

  Widget _socialButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.025),
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.white.withOpacity(0.08),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 18,
                color: Colors.white70,
              ),

              const SizedBox(width: 8),

              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 100,
      ),

      child: Column(
        crossAxisAlignment:
        CrossAxisAlignment.center,

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
              borderRadius:
              BorderRadius.circular(30),

              border: Border.all(
                color: const Color(0xFFA855F7)
                    .withOpacity(0.18),
              ),

              color: const Color(0xFFA855F7)
                  .withOpacity(0.04),
            ),

            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                Icon(
                  Icons.circle,
                  size: 6,
                  color: Color(0xFFC084FC),
                ),

                SizedBox(width: 8),

                Text(
                  "Get In Touch",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          // =====================================================
          // MAIN HEADING
          // =====================================================

          Text(
            "Let's Work Together",
            textAlign: TextAlign.center,

            style:
            theme.textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              height: 1.15,
            ),
          ),

          const SizedBox(height: 5),

          // =====================================================
          // OUTLINED HEADING
          // =====================================================

          Text(
            "Have a Project in Mind?",
            textAlign: TextAlign.center,

            style:
            theme.textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.w300,
              height: 1.15,
              color: Colors.transparent,
              shadows: [
                Shadow(
                  offset: const Offset(0, 0),
                  blurRadius: 0,
                  color: const Color(0xFFC084FC)
                      .withOpacity(0.75),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // =====================================================
          // DESCRIPTION
          // =====================================================

          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 650,
            ),

            child: Text(
              "I'm always open to discussing Flutter development "
                  "opportunities, freelance work, or interesting "
                  "projects. Feel free to reach out and let's create "
                  "something great together.",
              textAlign: TextAlign.center,

              style:
              theme.textTheme.bodyLarge?.copyWith(
                height: 1.6,
                color: Colors.white.withOpacity(0.55),
              ),
            ),
          ),

          const SizedBox(height: 50),

          // =====================================================
          // CONTACT CONTENT
          // =====================================================

          LayoutBuilder(
            builder: (context, constraints) {

              // =================================================
              // MOBILE
              // =================================================

              if (constraints.maxWidth < 700) {
                return Column(
                  children: [

                    _contactItem(
                      icon: Icons.email_outlined,
                      title: "Email",
                      value: AppConstants.email,
                      onTap: launchEmail,
                    ),

                    const SizedBox(height: 12),

                    _contactItem(
                      icon: Icons.phone_outlined,
                      title: "Phone",
                      value: AppConstants.phone,
                      onTap: launchPhone,
                    ),

                    const SizedBox(height: 12),

                    _contactItem(
                      icon: Icons.location_on_outlined,
                      title: "Location",
                      value: AppConstants.location,
                    ),

                    const SizedBox(height: 12),

                    _contactItem(
                      icon: Icons.code,
                      title: "GitHub",
                      value: AppConstants.github,
                      onTap: launchGitHub,
                    ),

                    const SizedBox(height: 12),

                    _contactItem(
                      icon: Icons.business,
                      title: "LinkedIn",
                      value: AppConstants.linkedin,
                      onTap: launchLinkedIn,
                    ),
                  ],
                );
              }

              // =================================================
              // DESKTOP / TABLET
              // =================================================

              return Row(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  // LEFT
                  Expanded(
                    child: Column(
                      children: [

                        _contactItem(
                          icon: Icons.email_outlined,
                          title: "Email",
                          value: AppConstants.email,
                          onTap: launchEmail,
                        ),

                        const SizedBox(height: 12),

                        _contactItem(
                          icon: Icons.phone_outlined,
                          title: "Phone",
                          value: AppConstants.phone,
                          onTap: launchPhone,
                        ),

                        const SizedBox(height: 12),

                        _contactItem(
                          icon: Icons.location_on_outlined,
                          title: "Location",
                          value: AppConstants.location,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 16),

                  // RIGHT
                  Expanded(
                    child: Column(
                      children: [

                        _contactItem(
                          icon: Icons.code,
                          title: "GitHub",
                          value: AppConstants.github,
                          onTap: launchGitHub,
                        ),

                        const SizedBox(height: 12),

                        _contactItem(
                          icon: Icons.business,
                          title: "LinkedIn",
                          value: AppConstants.linkedin,
                          onTap: launchLinkedIn,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 30),

          // =====================================================
          // SOCIAL LINKS
          // =====================================================

          LayoutBuilder(
            builder: (context, constraints) {

              if (constraints.maxWidth < 500) {
                return Column(
                  children: [

                    SizedBox(
                      width: double.infinity,
                      child: _socialButton(
                        icon: Icons.code,
                        label: "GitHub",
                        onTap: launchGitHub,
                      ),
                    ),

                    const SizedBox(height: 10),

                    SizedBox(
                      width: double.infinity,
                      child: _socialButton(
                        icon: Icons.business,
                        label: "LinkedIn",
                        onTap: launchLinkedIn,
                      ),
                    ),
                  ],
                );
              }

              return Row(
                children: [

                  _socialButton(
                    icon: Icons.code,
                    label: "GitHub",
                    onTap: launchGitHub,
                  ),

                  const SizedBox(width: 12),

                  _socialButton(
                    icon: Icons.business,
                    label: "LinkedIn",
                    onTap: launchLinkedIn,
                  ),
                ],
              );
            },
          ),

          const SizedBox(height: 30),

          // =====================================================
          // LET'S TALK BUTTON
          // =====================================================

          SizedBox(
            width: double.infinity,
            height: 58,

            child: ElevatedButton(
              onPressed: launchEmail,

              style: ElevatedButton.styleFrom(
                backgroundColor:
                const Color(0xFF8B5CF6),

                foregroundColor: Colors.white,

                elevation: 0,

                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(16),
                ),

                shadowColor:
                const Color(0xFFA855F7)
                    .withOpacity(0.4),
              ),

              child: const Row(
                mainAxisAlignment:
                MainAxisAlignment.center,

                children: [

                  Text(
                    "Let's Talk",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(width: 10),

                  Icon(
                    Icons.arrow_outward,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

