// lib/resume/cv_data.dart

class CVData {
  CVData._();

  //==========================
  // Personal Information
  //==========================

  static const String fullName = "Shithi Roy";

  static const String designation = "Junior Flutter Developer";

  static const String phone = "+8801762550211";

  static const String email = "your_email@gmail.com";

  static const String portfolio = "https://yourportfolio.com";

  static const String github = "https://github.com/yourusername";

  static const String linkedin =
      "https://linkedin.com/in/yourusername";

  static const String location = "Dhaka, Bangladesh";

  //==========================
  // Profile
  //==========================

  static const String profile = '''
I completed my BSc in Computer Science and Engineering (CSE) from American International University Bangladesh.

I have experience in Flutter application development and have worked on enterprise HRM, healthcare, communication, workforce management, retail, and e-commerce applications.

I enjoy writing clean, maintainable code and building responsive user interfaces while integrating REST APIs, Firebase services, and Odoo JSON-RPC backends.

I am a motivated and hardworking developer who enjoys learning new technologies and solving real-world problems.
''';

  //==========================
  // Skills
  //==========================

  static const List<SkillCategory> skills = [
    SkillCategory(
      title: "Programming Languages",
      items: [
        "Dart",
        "Java",
        "PHP",
      ],
    ),

    SkillCategory(
      title: "Frameworks",
      items: [
        "Flutter",
        "Android Framework",
      ],
    ),

    SkillCategory(
      title: "Architecture",
      items: [
        "MVVM",
        "MVC",
      ],
    ),

    SkillCategory(
      title: "State Management",
      items: [
        "Provider",
        "GetX",
      ],
    ),

    SkillCategory(
      title: "Backend Integration",
      items: [
        "REST API",
        "JSON-RPC",
        "Odoo ERP",
        "Firebase",
      ],
    ),

    SkillCategory(
      title: "Firebase",
      items: [
        "Authentication",
        "Cloud Firestore",
        "Cloud Storage",
        "Firebase Cloud Messaging",
      ],
    ),

    SkillCategory(
      title: "Tools",
      items: [
        "Android Studio",
        "VS Code",
        "Git",
        "GitHub",
        "GitHub Actions",
        "Postman",
      ],
    ),
  ];

  //==========================
  // Experience
  //==========================

  static const List<ExperienceModel> experiences = [
    ExperienceModel(
      company: "Kendroo Limited",
      role: "Junior Flutter Developer",
      duration: "Aug 2025 - Present",
      responsibilities: [
        "Developed and maintained cross-platform Flutter applications.",
        "Integrated REST APIs and Odoo JSON-RPC services.",
        "Implemented real-time chat and audio/video calling.",
        "Worked on workforce management, healthcare, retail and e-commerce applications.",
        "Implemented inventory, attendance and appointment features.",
      ],
    ),

    ExperienceModel(
      company: "Inovace Technologies",
      role: "Flutter Developer Intern",
      duration: "Dec 2024 - Jun 2025",
      responsibilities: [
        "Contributed to Flutter HRM applications.",
        "Implemented employee attendance features.",
        "Developed search and filtering modules.",
        "Worked on profile and device management.",
      ],
    ),
  ];

  //==========================
  // Projects
  //==========================

  static const List<ProjectModel> projects = [
    ProjectModel(
      title: "Discuss App",
      technologies: [
        "Flutter",
        "Provider",
        "JSON-RPC",
        "Agora",
      ],
      description:
      "Real-time messaging application integrated with Odoo Discuss including chat, channels, reactions, file sharing and audio/video calling.",
    ),

    ProjectModel(
      title: "Hospital Management App",
      technologies: [
        "Flutter",
        "Provider",
        "JSON-RPC",
      ],
      description:
      "Patient management application featuring appointments, prescriptions, invoice PDF generation and medical records.",
    ),

    ProjectModel(
      title: "Field Force App",
      technologies: [
        "Flutter",
        "Provider",
      ],
      description:
      "Workforce management application with geofenced check-in/out, background location tracking and timesheet generation.",
    ),

    ProjectModel(
      title: "Sales Purchase App",
      technologies: [
        "Flutter",
        "REST API",
      ],
      description:
      "Retail management application with inventory management, sales tracking and onboarding.",
    ),

    ProjectModel(
      title: "Fish Marketplace App",
      technologies: [
        "Flutter",
        "REST API",
      ],
      description:
      "E-commerce application supporting authentication, shopping cart, checkout and location-based delivery.",
    ),
  ];

  //==========================
  // Education
  //==========================

  static const List<EducationModel> educations = [
    EducationModel(
      institute:
      "American International University-Bangladesh",
      degree:
      "BSc in Computer Science & Engineering",
      duration: "2019 - 2025",
    ),

    EducationModel(
      institute: "Narayanganj Govt. Mohila College",
      degree: "Higher Secondary Certificate",
      duration: "Completed 2019",
    ),
  ];

  //==========================
  // Certification
  //==========================

  static const List<String> certifications = [
    "Android App Development - Udemy",
  ];

  //==========================
  // Reference
  //==========================

  static const ReferenceModel reference = ReferenceModel(
    name: "Sazzad Hossain",
    designation:
    "Lecturer, Department of Computer Science, AIUB",
    email: "sazzad@aiub.edu",
  );
}

class SkillCategory {
  final String title;
  final List<String> items;

  const SkillCategory({
    required this.title,
    required this.items,
  });
}

class ExperienceModel {
  final String company;
  final String role;
  final String duration;
  final List<String> responsibilities;

  const ExperienceModel({
    required this.company,
    required this.role,
    required this.duration,
    required this.responsibilities,
  });
}

class ProjectModel {
  final String title;
  final List<String> technologies;
  final String description;

  const ProjectModel({
    required this.title,
    required this.technologies,
    required this.description,
  });
}

class EducationModel {
  final String institute;
  final String degree;
  final String duration;

  const EducationModel({
    required this.institute,
    required this.degree,
    required this.duration,
  });
}

class ReferenceModel {
  final String name;
  final String designation;
  final String email;

  const ReferenceModel({
    required this.name,
    required this.designation,
    required this.email,
  });
}