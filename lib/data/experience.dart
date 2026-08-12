
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
"* Developed and maintained cross platform Flutter applications for workforce management, retail operations, healthcare, communication, and e commerce platforms.\n\n"
    "* Built features such as geofence check in/check out, background location tracking, attendance history, timesheet related workflows, inventory management, sales tracking, appointment scheduling,and digital invoices.\n\n"
    "* Integrated applications with Odoo-based backend systems using JSON-RPC and RESTful APIs.\n\n"
    "*Implemented real time chat, group communication, file sharing, message reactions, read receipts, and audio/video calling features."

),

Experience(
company: "Inovace Technologies",
position: "Flutter Developer Intern",
duration: "Dec 2024 - Jun 2025",
description:
"* Contributed to Flutter-based HRM, employee attendance, and smart attendance applications.\n\n"
    "* Developed filtering and search features for employee attendance, profiles, and student records.\n\n"
    "* Updated device allocation and employee allocation workflows.\n\n"
    "* Worked on attendance reporting, student search, profile viewing and device management features."
),

];

