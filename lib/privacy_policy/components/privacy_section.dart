import "package:service_masters/common/barrels.dart";

class PrivacyPolicySection extends StatelessWidget {
  const PrivacyPolicySection({
    required this.sectionTitle,
    required this.sectionContent,
    super.key,
  });
  final String sectionTitle;
  final String sectionContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sectionTitle,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          sectionContent,
          style: context.textTheme.bodyLarge,
        ),
      ],
    );
  }
}
