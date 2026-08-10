
class Experience {
final String company;
final String position;
final String duration;
final String description;

const Experience({
required this.company,
required this.position,
required this.duration,
required this.description,
});
}

const List<Experience> experiences = [
Experience(
company: "Kendroo Limited",
position: "Junior Flutter Developer",
duration: "2025 - Present",
description:
"Developing enterprise Flutter applications, integrating REST APIs and Odoo JSON-RPC services, fixing production issues, and implementing responsive user interfaces.",
),

Experience(
company: "Inovace Technologies",
position: "Flutter Developer Intern",
duration: "Dec 2024 - Jun 2025",
description:
"Built Flutter UI screens, integrated REST APIs, implemented Provider state management, and collaborated with senior developers on production features.",
),

Experience(
company: "American International University-Bangladesh (AIUB)",
position: "Bachelor of Science in Computer Science & Engineering",
duration: "2020 - 2024",
description:
"Completed undergraduate studies with a focus on software engineering, mobile application development, algorithms, and database systems.",
),
];

