class TermsAndConditionsSection {
  TermsAndConditionsSection({required this.heading, required this.content});

  factory TermsAndConditionsSection.fromJson(Map<String, dynamic> json) {
    return TermsAndConditionsSection(
      heading: json["heading"] as String,
      content: (json["content"] as List<dynamic>)
          .map((item) => item as String)
          .toList(),
    );
  }
  final String heading;
  final List<String> content;
}
