class Project {
  final String title;
  final String subtitle;
  final String description;

  final List<String> technologies;
  final List<String> features;

  final String image;

  final String githubUrl;
  final String? liveUrl;

  final bool isPrivate;

  const Project({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.technologies,
    required this.features,
    required this.image,
    required this.githubUrl,
    this.liveUrl,
    this.isPrivate = false,
  });
}