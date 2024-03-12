import "package:service_masters/common/barrels.dart";

@RoutePage()
class TermasAndConditionsScreen extends StatelessWidget {
  const TermasAndConditionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Terms and Conditions"),
        bottom: const TabBar(
          tabs: [
            Tab(
              text: "Hello",
            ),
            Tab(
              text: "Hello",
            ),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to Service Masters",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Gap(10),
                  Text(
                    "These terms and conditions outline the rules and regulations for the use of Service Masters's mobile application.",
                  ),
                  Gap(10),
                  Text(
                    "By accessing this app, we assume you accept these terms and conditions in full. Do not continue to use Service Masters's app if you do not accept all of the terms and conditions stated on this page.",
                  ),
                  Gap(10),
                  Text(
                    "The following terminology applies to these Terms and Conditions, Privacy Statement, and Disclaimer Notice and any or all Agreements: 'Client,' 'You,' and 'Your' refer to you, the person accessing this app and accepting the Company's terms and conditions.",
                  ),
                  Gap(10),
                  Text(
                    "By accessing this app, you are agreeing to be bound by these app Terms and Conditions, all applicable laws and regulations, and agree that you are responsible for compliance with any applicable local laws.",
                  ),
                  Gap(10),
                  Text(
                    "If you do not agree with any of these terms, you are prohibited from using or accessing this app. The materials contained in this app are protected by applicable copyright and trademark law.",
                  ),
                  Gap(10),
                  Text(
                    "1. Use License",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Permission is granted to temporarily download one copy of the materials (information or software) on Service Masters's app for personal, non-commercial transitory viewing only. This is the grant of a license, not a transfer of title, and under this license you may not:",
                  ),
                  Gap(10),
                  Text(
                    "  a. Modify or copy the materials;",
                  ),
                  Text(
                    "  b. Use the materials for any commercial purpose or for any public display (commercial or non-commercial);",
                  ),
                  Text(
                    "  c. Attempt to decompile or reverse engineer any software contained on Service Masters's app;",
                  ),
                  Text(
                    "  d. Remove any copyright or other proprietary notations from the materials; or",
                  ),
                  Text(
                    "  e. Transfer the materials to another person or 'mirror' the materials on any other server.",
                  ),
                  Gap(10),
                  Text(
                    "2. Disclaimer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "The materials on Service Masters's app are provided 'as is.' Service Masters makes no warranties, expressed or implied, and hereby disclaims and negates all other warranties, including without limitation, implied warranties or conditions of merchantability, fitness for a particular purpose, or non-infringement of intellectual property or other violation of rights.",
                  ),
                  Gap(10),
                  Text(
                    "Further, Service Masters does not warrant or make any representations concerning the accuracy, likely results, or reliability of the use of the materials on its app or otherwise relating to such materials or on any sites linked to this app.",
                  ),
                  Gap(10),
                  Text(
                    "3. Limitations",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Service Masters shall not be liable for any damages (including, without limitation, damages for loss of data or profit, or due to business interruption) arising out of the use or inability to use the materials on Service Masters's app, even if Service Masters or a Service Masters authorized representative has been notified orally or in writing of the possibility of such damage.",
                  ),
                  Gap(10),
                  Text(
                    "4. Accuracy of Materials",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "The materials appearing on Service Masters's app could include technical, typographical, or photographic errors. Service Masters does not warrant that any of the materials on its app are accurate, complete, or current.",
                  ),
                  Gap(10),
                  Text(
                    "5. Modifications",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Service Masters may revise these terms of service for its app at any time without notice. By using this app, you are agreeing to be bound by the then current version of these terms of service.",
                  ),
                  Gap(10),
                  Text(
                    "6. Governing Law",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "These terms and conditions are governed by and construed in accordance with the laws of [Your Country] and you irrevocably submit to the exclusive jurisdiction of the courts in that State or location.",
                  ),
                  Gap(10),
                  Text(
                    "7. Contact Information",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "If you have any questions about these Terms and Conditions, please contact us at [your contact email].",
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(
                "Hello",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
