
class SkillCategory {
final String title;
final List<String> skills;

const SkillCategory({
required this.title,
required this.skills,
});
}

const List<SkillCategory> skillCategories = [
SkillCategory(
title: "Languages",
skills: [
"Dart",
"Java",
"C++",
"SQL",
],
),

SkillCategory(
title: "Frameworks",
skills: [
"Flutter",
"Android SDK",
],
),

SkillCategory(
title: "State Management",
skills: [
"Provider",
"GetX",
],
),

SkillCategory(
title: "Backend",
skills: [
"REST API",
"JSON-RPC",
"Firebase",
"Odoo",
],
),

SkillCategory(
title: "Database",
skills: [
"Firestore",
"SQLite",
],
),

SkillCategory(
title: "Tools",
skills: [
"Git",
"GitHub",
"Android Studio",
"VS Code",
"Postman",
"GitHub Actions",
],
),
];
