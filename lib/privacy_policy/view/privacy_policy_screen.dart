import "package:service_masters/common/barrels.dart";

@RoutePage()
class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Privacy Policy"),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(10),
              PrivacyPolicySection(
                sectionTitle: "Introduction",
                sectionContent: """
      Welcome to Service Masters ("we," "our," or "us"). This Privacy Policy is designed to help you understand how we collect, use, disclose, and safeguard your personal information. By using our services, you agree to the terms outlined in this Privacy Policy.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Information We Collect",
                sectionContent: """
      We may collect the following types of personal information when you use our app:
1. User-Provided Information: We may collect information you provide when you register for an account, update your profile, or use our services. This may include your name, email address, and other relevant details.
2. Automatically Collected Information: We may collect certain information automatically, such as your device information, IP address, and usage patterns within the app.
3. Location Information: If you enable location services, we may collect and process information about your device's location.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "How We Use Your Information",
                sectionContent: """
      We may use the collected information for the following purposes:
1. Provide and Improve Services: To deliver and enhance the functionality of our services.
2. Communication: To communicate with you, respond to inquiries, and send important updates.
3. Personalization: To personalize your experience and provide content tailored to your preferences.
4. Analytics: To analyze usage patterns, troubleshoot issues, and improve the overall user experience.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Information Sharing",
                sectionContent: """
      We do not sell, trade, or otherwise transfer your personal information to outside parties. However, we may share your information with trusted third parties who assist us in operating our app, conducting our business, or servicing you, provided that such parties agree to keep this information confidential.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Security",
                sectionContent: """
      We implement reasonable security measures to protect your personal information from unauthorized access, alteration, disclosure, or destruction.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Your Choices",
                sectionContent: """
      You may opt-out of certain data collection and use by adjusting your device settings. However, please note that some features of the app may be affected.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Children's Privacy",
                sectionContent: """
      Our services are not intended for users under the age of 13. We do not knowingly collect or solicit personal information from children.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Changes to this Privacy Policy",
                sectionContent: """
      We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page.
                """,
              ),
              PrivacyPolicySection(
                sectionTitle: "Contact Us",
                sectionContent: """
      If you have any questions or concerns about our Privacy Policy, please contact us at [your contact email].
                """,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
