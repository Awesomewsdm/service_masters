import "package:flutter/material.dart";

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PaymentOptionTile(
              icon: Icons.phone_android,
              title: "Mobile Money",
              onTap: () {
                // Implement mobile money payment logic
                _handlePaymentOptionSelected(context, "Mobile Money");
              },
            ),
            PaymentOptionTile(
              icon: Icons.account_balance,
              title: "Bank Transfer",
              onTap: () {
                // Implement bank transfer payment logic
                _handlePaymentOptionSelected(context, "Bank Transfer");
              },
            ),
            PaymentOptionTile(
              icon: Icons.credit_card,
              title: "Card Payment",
              onTap: () {
                // Implement card payment logic
                _handlePaymentOptionSelected(context, "Card Payment");
              },
            ),
          ],
        ),
      ),
    );
  }

  void _handlePaymentOptionSelected(BuildContext context, String option) {
    // Handle the selected payment option (e.g., navigate to a payment screen)
    print("Selected Payment Option: $option");
  }
}

class PaymentOptionTile extends StatelessWidget {
  const PaymentOptionTile({
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4.0,
        child: ListTile(
          leading: Icon(icon),
          title: Text(title),
        ),
      ),
    );
  }
}
