class ResumeData {
  final String name;
  final String title;
  final String location;
  final String summary;
  final bool isFavorite;

  ResumeData({
    required this.name,
    required this.title,
    required this.location,
    required this.summary,
    this.isFavorite = false,
  });
}