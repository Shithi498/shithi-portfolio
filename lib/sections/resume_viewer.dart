import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

// class ResumeViewer extends StatelessWidget {
//   const ResumeViewer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Shithi Roy - Resume (2 Pages)'),
//         backgroundColor: Colors.teal,
//       ),
//       body: PdfPreview(
//         build: (format) => generatePdf(format),
//       ),
//     );
//   }
//
//   Future<Uint8List> generatePdf(PdfPageFormat format) async {
//     final pdf = pw.Document();
//
//     // Reusable Text Styles
//     final headerStyle = pw.TextStyle(
//       fontSize: 22,
//       fontWeight: pw.FontWeight.bold,
//       color: PdfColors.teal800,
//     );
//     final titleStyle = pw.TextStyle(
//       fontSize: 14,
//       fontWeight: pw.FontWeight.bold,
//       color: PdfColors.teal900,
//     );
//     final sectionTitleStyle = pw.TextStyle(
//       fontSize: 13,
//       fontWeight: pw.FontWeight.bold,
//       color: PdfColors.teal700,
//     );
//     final boldStyle = pw.TextStyle(
//       fontSize: 10,
//       fontWeight: pw.FontWeight.bold,
//     );
//     final regularStyle = const pw.TextStyle(
//       fontSize: 9.5,
//       color: PdfColors.grey900,
//     );
//
//     // Sidebar Content Component
//     pw.Widget buildSidebar() {
//       return pw.Column(
//         crossAxisAlignment: pw.CrossAxisAlignment.start,
//         children: [
//           pw.Text("PORTFOLIO", style: sectionTitleStyle),
//           pw.Divider(thickness: 1, color: PdfColors.teal200),
//           pw.Bullet(text: "GitHub", style: regularStyle),
//           pw.Bullet(text: "LinkedIn", style: regularStyle),
//           pw.Bullet(text: "Email", style: regularStyle),
//           pw.Bullet(text: "+8801762550211", style: regularStyle),
//           pw.SizedBox(height: 15),
//
//           pw.Text("SKILLS", style: sectionTitleStyle),
//           pw.Divider(thickness: 1, color: PdfColors.teal200),
//
//           pw.Text("Software", style: boldStyle),
//           pw.Text("• Android Studio\n• Visual Studio Code, Postman", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("Languages", style: boldStyle),
//           pw.Text("• Java, Dart, PHP", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("App Development", style: boldStyle),
//           pw.Text("• Data Structure & Algorithm\n• Architecture: MVVM, MVC\n• State: GetX, Provider", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("Frameworks", style: boldStyle),
//           pw.Text("• Flutter (iOS & Android)\n• Android Framework", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("Backend Integration", style: boldStyle),
//           pw.Text("• RESTful APIs, JSON-RPC\n• Odoo ERP Integration", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("Firebase", style: boldStyle),
//           pw.Text("• Auth, Cloud Firestore\n• Storage, FCM", style: regularStyle),
//           pw.SizedBox(height: 6),
//
//           pw.Text("Version Control", style: boldStyle),
//           pw.Text("• Git, GitHub, CI/CD", style: regularStyle),
//         ],
//       );
//     }
//
//     // ================= PAGE 1 =================
//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         margin: const pw.EdgeInsets.all(32),
//         build: (pw.Context context) {
//           return pw.Row(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               // Left Column (Skills & Portfolio)
//               pw.SizedBox(
//                 width: 160,
//                 child: buildSidebar(),
//               ),
//               pw.SizedBox(width: 20),
//
//               // Right Column (About, Experience, First Set of Projects)
//               pw.Expanded(
//                 child: pw.Column(
//                   crossAxisAlignment: pw.CrossAxisAlignment.start,
//                   children: [
//                     // Header
//                     pw.Text("Shithi Roy", style: headerStyle),
//                     pw.Text("App Developer", style: titleStyle),
//                     pw.SizedBox(height: 10),
//
//                     // About Me
//                     pw.Text(
//                       "I completed my BSc in Computer Science and Engineering (CSE) from American International University Bangladesh. I have experience in app development and have worked on several projects, which helped me improve my technical and problem-solving skills. I enjoy writing clean and easy-to-maintain code that is simple to understand and troubleshoot. I am a motivated and hardworking person with a strong work ethic, capable of working independently or in a team.",
//                       style: regularStyle,
//                     ),
//                     pw.SizedBox(height: 15),
//
//                     // Experience
//                     pw.Text("EXPERIENCE", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//
//                     pw.Text("Jr. Flutter Developer | Kendroo Limited", style: boldStyle),
//                     pw.Text("10 August 2025 - Continue", style: pw.TextStyle(fontSize: 8.5, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 3),
//                     pw.Bullet(text: "Developed and maintained cross-platform Flutter applications for workforce management, retail, healthcare, and e-commerce.", style: regularStyle),
//                     pw.Bullet(text: "Built geofenced check-in/out, background location tracking, attendance history, inventory management, and digital invoices.", style: regularStyle),
//                     pw.Bullet(text: "Integrated applications with Odoo-based backend systems using JSON-RPC and RESTful APIs.", style: regularStyle),
//                     pw.Bullet(text: "Implemented real-time chat, group communication, audio/video calling, and file sharing features.", style: regularStyle),
//                     pw.SizedBox(height: 8),
//
//                     pw.Text("Flutter Developer (Intern) | Inovace Technologies", style: boldStyle),
//                     pw.Text("23 December 2024 - 23 June 2025", style: pw.TextStyle(fontSize: 8.5, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 3),
//                     pw.Bullet(text: "Contributed to Flutter-based HRM, employee attendance, and smart attendance applications.", style: regularStyle),
//                     pw.Bullet(text: "Developed filtering/search features for employee attendance, profiles, and student records.", style: regularStyle),
//                     pw.Bullet(text: "Worked on attendance reporting, profile viewing, and device allocation workflows.", style: regularStyle),
//                     pw.SizedBox(height: 15),
//
//                     // Projects Part 1
//                     pw.Text("PROJECTS", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//
//                     pw.Text("Field Force App", style: boldStyle),
//                     pw.Text("Developed a cross-platform workforce management tool featuring a geofenced 'Swipe to Check-in/out' system and automated history logging. Implemented real-time background location services.", style: regularStyle),
//                     pw.Text("(State: Provider | Architecture: MVC | Backend: JSON-RPC)", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//
//     // ================= PAGE 2 =================
//     pdf.addPage(
//       pw.Page(
//         pageFormat: PdfPageFormat.a4,
//         margin: const pw.EdgeInsets.all(32),
//         build: (pw.Context context) {
//           return pw.Row(
//             crossAxisAlignment: pw.CrossAxisAlignment.start,
//             children: [
//               // Left Column (Education, Certifications, Reference)
//               pw.SizedBox(
//                 width: 160,
//                 child: pw.Column(
//                   crossAxisAlignment: pw.CrossAxisAlignment.start,
//                   children: [
//                     pw.Text("EDUCATION", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//                     pw.Text("BSc in Computer Science", style: boldStyle),
//                     pw.Text("American International University-Bangladesh", style: regularStyle),
//                     pw.Text("Sept 2019 - June 2025", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 8),
//
//                     pw.Text("HSC", style: boldStyle),
//                     pw.Text("Narayangonj Govt. Mohila College", style: regularStyle),
//                     pw.Text("Completed 2019", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 20),
//
//                     pw.Text("CERTIFICATION", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//                     pw.Text("Android App Development", style: boldStyle),
//                     pw.Text("Achieved certificate on Android App Development from Udemy.", style: regularStyle),
//                     pw.SizedBox(height: 20),
//
//                     pw.Text("REFERENCE", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//                     pw.Text("SAZZAD HOSSAIN", style: boldStyle),
//                     pw.Text("Lecturer, CSE, AIUB", style: regularStyle),
//                     pw.Text("Email: sazzad@aiub.edu", style: regularStyle),
//                   ],
//                 ),
//               ),
//               pw.SizedBox(width: 20),
//
//               // Right Column (Remaining Projects)
//               pw.Expanded(
//                 child: pw.Column(
//                   crossAxisAlignment: pw.CrossAxisAlignment.start,
//                   children: [
//                     pw.Text("PROJECTS (CONTINUED)", style: sectionTitleStyle),
//                     pw.Divider(thickness: 1, color: PdfColors.teal200),
//
//                     pw.Text("Sales Purchase App", style: boldStyle),
//                     pw.Text("Shop management application streamlining retail operations. Features tools for inventory tracking, sales logging, and automated onboarding.", style: regularStyle),
//                     pw.Text("(State: Provider | Architecture: MVC | Backend: REST APIs)", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 10),
//
//                     pw.Text("Hospital Management App", style: boldStyle),
//                     pw.Text("Patient-care application featuring real-time appointment scheduling, digital prescription management, automated invoice generation, and seamless PDF viewing/downloading.", style: regularStyle),
//                     pw.Text("(State: Provider | Architecture: MVC | Backend: JSON-RPC)", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 10),
//
//                     pw.Text("Discuss App", style: boldStyle),
//                     pw.Text("Cross-platform messaging app integrated with Odoo's Discuss module using JSON-RPC. Supports real-time chat, group channels, file sharing, audio/video calls, reactions, and message edits.", style: regularStyle),
//                     pw.Text("(State: Provider | Architecture: MVC | Backend: JSON-RPC)", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                     pw.SizedBox(height: 10),
//
//                     pw.Text("Fish Marketplace App", style: boldStyle),
//                     pw.Text("E-commerce application for purchasing fish products. Features user authentication, category browsing, cart management, location-based delivery, and multi-option checkout.", style: regularStyle),
//                     pw.Text("(State: Provider | Architecture: MVC | Backend: RESTful API)", style: pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//
//     return pdf.save();
//   }
// }


import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class ResumeViewer extends StatelessWidget {
  const ResumeViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shithi Roy - Resume'),
        backgroundColor: const Color(0xFF2F5233),
      ),
      body: PdfPreview(
        build: (format) => generatePdf(format),
      ),
    );
  }

  Future<Uint8List> generatePdf(PdfPageFormat format) async {
    final pdf = pw.Document();

    // Color Palette matching the exact image tones
    final pageBgColor = PdfColor.fromHex('#D2DEC6');      // Light Sage Background
    final sidebarBgColor = PdfColor.fromHex('#BDCAA8');   // Muted Darker Sage Sidebar Background
    final primaryBlueColor = PdfColor.fromHex('#225888'); // Deep Slate Blue headers & links
    final darkTextColor = PdfColor.fromHex('#212A21');    // Dark Charcoal text
    final subTextColor = PdfColor.fromHex('#4E5D4E');     // Subtitle & date grey

    // Typography setup closely matching standard sans-serif PDF fonts
    final nameStyle = pw.TextStyle(
      fontSize: 18,
      fontWeight: pw.FontWeight.bold,
      color: primaryBlueColor,
    );
    final titleStyle = pw.TextStyle(
      fontSize: 10,
      fontWeight: pw.FontWeight.bold,
      color: darkTextColor,
    );
    final sectionHeaderStyle = pw.TextStyle(
      fontSize: 11,
      fontWeight: pw.FontWeight.bold,
      color: primaryBlueColor,
    );
    final itemHeaderStyle = pw.TextStyle(
      fontSize: 8.5,
      fontWeight: pw.FontWeight.bold,
      color: darkTextColor,
    );
    final bodyStyle = pw.TextStyle(
      fontSize: 7.0,
      color: darkTextColor,
      lineSpacing: 1.25,
    );
    final linkStyle = pw.TextStyle(
      fontSize: 8.0,
      color: primaryBlueColor,
      decoration: pw.TextDecoration.underline,
    );

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        margin: pw.EdgeInsets.zero,
        build: (pw.Context context) {
          return pw.Container(
            color: pageBgColor,
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                // ================= TOP HEADER SECTION =================
                pw.Container(
                  padding: const pw.EdgeInsets.fromLTRB(24, 20, 24, 14),
                  child: pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      // Circular Profile Placeholder
                      pw.Container(
                        width: 48,
                        height: 48,
                        decoration: pw.BoxDecoration(
                          shape: pw.BoxShape.circle,
                          color: primaryBlueColor,
                        ),
                        child: pw.Center(
                          child: pw.Text(
                            "SR",
                            style: pw.TextStyle(
                              color: PdfColors.white,
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      pw.SizedBox(width: 14),

                      // Name, Title & Bio
                      pw.Expanded(
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text("Shithi Roy", style: nameStyle),
                            pw.SizedBox(height: 2),
                            pw.Text("App developer", style: titleStyle),
                            pw.SizedBox(height: 5),
                            pw.Text(
                              "I completed my BSc in Computer Science and Engineering (CSE) from American International University Bangladesh. I have experience in app development and have worked on several projects, which helped me improve my technical and problem-solving skills. I enjoy writing clean and easy-to-maintain code that is simple to understand and troubleshoot. I am always interested in learning new technologies and frameworks to improve my skills and stay updated. I am a motivated and hardworking person with a strong work ethic. I can work well both independently and as part of a team.",
                              style: bodyStyle,
                            ),
                          ],
                        ),
                      ),
                      pw.SizedBox(width: 18),

                      // Portfolio & Links
                      pw.SizedBox(
                        width: 105,
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text("PORTFOLIO", style: sectionHeaderStyle),
                            pw.SizedBox(height: 4),
                            pw.Text("GitHub", style: linkStyle),
                            pw.SizedBox(height: 3),
                            pw.Text("LinkedIn", style: linkStyle),
                            pw.SizedBox(height: 3),
                            pw.Text("Email", style: linkStyle),
                            pw.SizedBox(height: 3),
                            pw.Text("+8801762550211", style: pw.TextStyle(fontSize: 8.0, color: darkTextColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // Top Separator Divider Line
                pw.Container(
                  height: 0.5,
                  color: PdfColor.fromHex('#ABB99D'),
                  margin: const pw.EdgeInsets.symmetric(horizontal: 24),
                ),

                // ================= TWO-COLUMN LOWER SECTION =================
                pw.Expanded(
                  child: pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.stretch,
                    children: [
                      // LEFT SIDEBAR COLUMN (Darker background tint)
                      pw.Container(
                        width: 190,
                        color: sidebarBgColor,
                        padding: const pw.EdgeInsets.fromLTRB(24, 12, 14, 12),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            // 1. SKILLS
                            pw.Text("Skills", style: sectionHeaderStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Software", style: itemHeaderStyle),
                            pw.Text("Android Studio\nVisual Studio Code, Postman", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Programming Language", style: itemHeaderStyle),
                            pw.Text("Java, Dart, PHP", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("App development", style: itemHeaderStyle),
                            pw.Text("Data Structure & Algorithm\nArchitecture: MVVM, MVC\nState management: GetX, Provider", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Frameworks", style: itemHeaderStyle),
                            pw.Text("Flutter (IOS & Android)\nAndroid Framework", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Backend Integration", style: itemHeaderStyle),
                            pw.Text("RESTful APIs\nJSON-RPC\nOdoo ERP Integration", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Firebase", style: itemHeaderStyle),
                            pw.Text("Authentication\nCloud Firestore\nCloud Storage, Firebase Cloud Messaging", style: bodyStyle),
                            pw.SizedBox(height: 5),

                            pw.Text("Version Control", style: itemHeaderStyle),
                            pw.Text("Git, GitHub,\nGit-lab Actions (CI/CD)", style: bodyStyle),
                            pw.SizedBox(height: 10),

                            // 2. CERTIFICATION
                            pw.Text("Certification", style: sectionHeaderStyle),
                            pw.SizedBox(height: 4),
                            pw.Text("Android App Development", style: pw.TextStyle(fontSize: 8.0, fontWeight: pw.FontWeight.bold, decoration: pw.TextDecoration.underline)),
                            pw.SizedBox(height: 2),
                            pw.Text("I have achieved certificate on Android App Development From Udemy", style: bodyStyle),
                            pw.SizedBox(height: 10),

                            // 3. EDUCATION
                            pw.Text("Education", style: sectionHeaderStyle),
                            pw.SizedBox(height: 4),
                            pw.Text("BSc in Computer Science", style: itemHeaderStyle),
                            pw.Text("September 2019-June 2025", style: pw.TextStyle(fontSize: 6.8, color: subTextColor)),
                            pw.Text("American International University-Bangladesh", style: bodyStyle),
                            pw.SizedBox(height: 4),
                            pw.Text("Higher Secondary School Certificate", style: itemHeaderStyle),
                            pw.Text("Completed 2019", style: pw.TextStyle(fontSize: 6.8, color: subTextColor)),
                            pw.Text("Narayangonj Govt. Mohila College", style: bodyStyle),
                            pw.SizedBox(height: 10),

                            // 4. REFERENCE
                            pw.Text("Reference", style: sectionHeaderStyle),
                            pw.SizedBox(height: 4),
                            pw.Text("SAZZAD HOSSAIN", style: itemHeaderStyle),
                            pw.Text("Lecturer,Computer Science, AIUB", style: bodyStyle),
                            pw.Text("Email: sazzad@aiub.edu", style: bodyStyle),
                          ],
                        ),
                      ),

                      // RIGHT MAIN CONTENT COLUMN
                      pw.Expanded(
                        child: pw.Container(
                          padding: const pw.EdgeInsets.fromLTRB(16, 12, 24, 12),
                          child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              // EXPERIENCE SECTION
                              pw.Text("Experience", style: sectionHeaderStyle),
                              pw.SizedBox(height: 5),

                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Flutter Developer ", style: itemHeaderStyle),
                                    pw.TextSpan(text: "(Intern) ", style: pw.TextStyle(fontSize: 7.2, color: subTextColor)),
                                    pw.TextSpan(text: "Inovace Technologies", style: pw.TextStyle(fontSize: 8.0, fontWeight: pw.FontWeight.bold, decoration: pw.TextDecoration.underline)),
                                  ],
                                ),
                              ),
                              pw.Text("23 December 2024- 23 June 2025", style: pw.TextStyle(fontSize: 6.5, color: subTextColor)),
                              pw.SizedBox(height: 3),
                              pw.Bullet(text: "Contributed to Flutter-based HRM, employee attendance, and smart attendance applications.", style: bodyStyle),
                              pw.Bullet(text: "Developed filtering and search features for employee attendance, profiles, and student records.", style: bodyStyle),
                              pw.Bullet(text: "Updated device allocation and employee allocation workflows.", style: bodyStyle),
                              pw.Bullet(text: "Worked on attendance reporting, student search, profile viewing and device-management features.", style: bodyStyle),

                              pw.SizedBox(height: 8),

                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Jr. Flutter Developer ", style: itemHeaderStyle),
                                    pw.TextSpan(text: "Kendroo Limited", style: pw.TextStyle(fontSize: 8.0, fontWeight: pw.FontWeight.bold, decoration: pw.TextDecoration.underline)),
                                  ],
                                ),
                              ),
                              pw.Text("10 august 2025-Continue", style: pw.TextStyle(fontSize: 6.5, color: subTextColor)),
                              pw.SizedBox(height: 3),
                              pw.Bullet(text: "Developed and maintained cross-platform Flutter applications for workforce management, retail operations, healthcare, communication, and e-commerce platforms.", style: bodyStyle),
                              pw.Bullet(text: "Built features such as geofenced check-in/check-out, background location tracking, attendance history, timesheet-related workflows, inventory management, sales tracking, appointment scheduling, and digital invoices.", style: bodyStyle),
                              pw.Bullet(text: "Integrated applications with Odoo-based backend systems using JSON-RPC and RESTful APIs.", style: bodyStyle),
                              pw.Bullet(text: "Implemented real-time chat, group communication, file sharing, message reactions, read receipts, and audio/video calling features.", style: bodyStyle),

                              pw.SizedBox(height: 12),

                              // PROJECTS SECTION
                              pw.Text("Projects", style: sectionHeaderStyle),
                              pw.SizedBox(height: 5),

                              pw.Text("Field Force App:", style: itemHeaderStyle),
                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Developed a cross-platform workforce management tool featuring a geofenced \"Swipe to Check-in/out\" system and automated history logging.Implemented real-time background location services to track distance traveled and work hours, ensuring high data accuracy for timesheet generation. ", style: bodyStyle),
                                    pw.TextSpan(text: "(State management : Provider, Architecture: MVC, Backend: JSON RPC)", style: pw.TextStyle(fontSize: 6.5, fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                              ),

                              pw.SizedBox(height: 6),

                              pw.Text("Sales Purchase App:", style: itemHeaderStyle),
                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "This Flutter-based shop management application, streamlines retail operations. It features a comprehensive suite of tools for inventory tracking, sales logging, and automated onboarding. ", style: bodyStyle),
                                    pw.TextSpan(text: "(State management : Provider, Architecture: MVC, Backend: REST APIs)", style: pw.TextStyle(fontSize: 6.5, fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                              ),

                              pw.SizedBox(height: 6),

                              pw.Text("Hospital Management App:", style: itemHeaderStyle),
                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Developed a comprehensive patient-care application featuring real-time appointment scheduling, digital prescription management, and automated invoice generation. Integrated a PDF generation and viewing system to allow users to download and share medical records seamlessly across mobile devices. ", style: bodyStyle),
                                    pw.TextSpan(text: "(State management: Provider, Architecture: MVC, Backend: JSON RPC)", style: pw.TextStyle(fontSize: 6.5, fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                              ),

                              pw.SizedBox(height: 6),

                              pw.Text("Discuss App", style: itemHeaderStyle),
                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Built a cross-platform messaging app integrated with Odoo's Discuss module using JSON-RPC. Developed features including real-time chat, group/channel creation, file sharing, message reactions, read receipts, edit message and message unsend. Added one-to-one and group audio/video calling. ", style: bodyStyle),
                                    pw.TextSpan(text: "(State management: Provider, Architecture: MVC, Backend: JSON RPC)", style: pw.TextStyle(fontSize: 6.5, fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                              ),

                              pw.SizedBox(height: 6),

                              pw.Text("Fish Marketplace App", style: itemHeaderStyle),
                              pw.RichText(
                                text: pw.TextSpan(
                                  children: [
                                    pw.TextSpan(text: "Developed a mobile e-commerce application for purchasing fish products. The app includes user authentication, category-based product browsing, shopping cart management, and a complete checkout process with delivery address, shipping method, and payment options. It also supports location-based delivery selection. ", style: bodyStyle),
                                    pw.TextSpan(text: "(State management: Provider, Architecture: MVC, Backend: RESTful API)", style: pw.TextStyle(fontSize: 6.5, fontWeight: pw.FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );

    return pdf.save();
  }
}