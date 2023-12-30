import "package:flutter/material.dart";

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            _buildPaymentMethodButton("Credit Card"),
            _buildPaymentMethodButton("Mobile Money"),
            const SizedBox(height: 20),
            if (selectedPaymentMethod.isNotEmpty) ..._buildPaymentFields(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Validate and process payment based on the selected method
                if (selectedPaymentMethod.isNotEmpty) {
                  // Implement your payment processing logic here
                  // You can navigate to the next screen or perform other actions
                }
              },
              child: const Text("Proceed to Pay"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentMethodButton(String method) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedPaymentMethod = method;
        });
      },
      child: Text(method),
    );
  }

  List<Widget> _buildPaymentFields() {
    if (selectedPaymentMethod == "Credit Card") {
      return [
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(labelText: "Card Number"),
        ),
        const TextField(
          decoration: InputDecoration(labelText: "Cardholder Name"),
        ),
        const Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: "Expiry Date"),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: "CVV"),
              ),
            ),
          ],
        ),
      ];
    } else if (selectedPaymentMethod == "Mobile Money") {
      return [
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(labelText: "Phone Number"),
        ),
        const TextField(
          decoration:
              InputDecoration(labelText: "Network (e.g., MTN, Vodafone)"),
        ),
      ];
    } else {
      return [];
    }
  }
}
