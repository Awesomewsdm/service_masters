import "package:service_masters/common/barrels.dart";

@RoutePage()
class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frequently Asked Questions"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  categories.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Chip(
                      label: Text(
                        categories[index % categories.length],
                        style: context.textTheme.bodyMedium!.copyWith(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.grey[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide.none,
                      padding: const EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: faqList.length,
                itemBuilder: (context, index) {
                  return FAQCard(faq: faqList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<String> categories = [
  "All",
  "Electrical",
  "Carpentry",
  "Painting",
  "Cleaning",
  "Cleaning",
];

class FAQItem {
  FAQItem({required this.question, required this.answer});
  final String question;
  final String answer;
}

class FAQCard extends StatelessWidget {
  const FAQCard({required this.faq, super.key});
  final FAQItem faq;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ExpansionTile(
        backgroundColor: Colors.grey[200],
        title: Text(
          faq.question,
          style: context.textTheme.bodyLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(faq.answer),
          ),
        ],
      ),
    );
  }
}

final List<FAQItem> faqList = [
  FAQItem(
    question: "How do I place an order?",
    answer:
        'To place an order, simply navigate to the "Services" section, choose the desired service, and follow the on-screen instructions to complete your booking.',
  ),
  FAQItem(
    question: "How do I place an order?",
    answer:
        'To place an order, simply navigate to the "Services" section, choose the desired service, and follow the on-screen instructions to complete your booking.',
  ),
  FAQItem(
    question: "Can I cancel my booking?",
    answer:
        'Yes, you can cancel your booking. Please go to the "My Bookings" section and follow the cancellation process. Note that cancellation policies may apply.',
  ),
  FAQItem(
    question: "How do I contact customer support?",
    answer:
        'For any assistance or queries, you can contact our customer support team via the "Contact Us" option in the app. We are available 24/7 to help you.',
  ),
  FAQItem(
    question: "How do I update my profile information?",
    answer:
        'To update your profile, go to the "My Account" section and select the "Edit Profile" option. From there, you can modify your personal details and save the changes.',
  ),
  FAQItem(
    question: "What payment methods are accepted?",
    answer:
        "We accept various payment methods, including credit/debit cards and digital wallets. You can view the accepted payment options during the checkout process.",
  ),
  FAQItem(
    question: "Is there a loyalty program or rewards system?",
    answer:
        'Yes, we offer a loyalty program where you can earn points for every completed service. These points can be redeemed for discounts or special offers. Check the "Rewards" section for more details.',
  ),
  FAQItem(
    question: "How can I track the status of my service request?",
    answer:
        'You can track the status of your service request in the "My Bookings" section. It will provide real-time updates on the progress of your booked services.',
  ),
  FAQItem(
    question: "Are there any discounts or promotions available?",
    answer:
        'Yes, we regularly offer discounts and promotions. Keep an eye on the "Promotions" section for the latest deals, or subscribe to our newsletter to receive exclusive offers via email.',
  ),
  FAQItem(
    question: "What happens if I encounter issues with the service?",
    answer:
        "If you experience any issues with the service, please contact our customer support through the app. We have a dedicated team ready to assist you and resolve any concerns.",
  ),
  FAQItem(
    question: "How do I reset my password if I forget it?",
    answer:
        'To reset your password, go to the login screen and click on the "Forgot Password" link. Follow the instructions sent to your registered email to set a new password.',
  ),
  FAQItem(
    question: "Can I schedule services for a specific date and time?",
    answer:
        "Yes, you can schedule services for a specific date and time during the booking process. Choose your preferred time slot, and our artisans will be there to provide the service at your convenience.",
  ),
  FAQItem(
    question: "What safety measures are in place during the service?",
    answer:
        "Our artisans follow strict safety protocols. They use personal protective equipment and adhere to hygiene guidelines to ensure a safe and secure service experience for our customers.",
  ),
  FAQItem(
    question: "How can I provide feedback on the service?",
    answer:
        'After the completion of a service, you can leave feedback and rate the artisan in the "My Bookings" section. Your feedback helps us maintain high-quality service standards.',
  ),
];
