import "package:home_service_app/common/barrels.dart";

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            _buildPaymentMethodButton("Credit Card"),
            _buildPaymentMethodButton("Mobile Money"),
            _buildPaymentMethodButton("Bank"),
            if (selectedPaymentMethod.isNotEmpty) ..._buildPaymentFields(),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        color: Colors.transparent,
        child: SizedBox(
          width: context.screenWidth,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: tPrimaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaymentScreen(),
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Proceed to Pay",
              style: context.textTheme.bodyLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
        CustomTextFormField(
          autofillHints: const [AutofillHints.name],
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter a valid name";
            } else {
              return "null";
            }
          },
          // controller: signUpController.fullName,
          keyboardType: TextInputType.name,
          hintText: "Card Number",
          labelText: "Card Number",
          prefixIcon: const Icon(CustomIcons.user, color: tPrimaryColor),
        ),
        CustomTextFormField(
          autofillHints: const [AutofillHints.name],
          validator: (value) {
            if (value!.isEmpty) {
              return "Enter a valid name";
            } else {
              return "null";
            }
          },
          // controller: signUpController.fullName,
          keyboardType: TextInputType.name,
          hintText: "Cardholder Name",
          labelText: "Cardholder Name",
          prefixIcon: const Icon(
            CustomIcons.user,
            color: tPrimaryColor,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextFormField(
                autofillHints: const [AutofillHints.name],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a valid name";
                  } else {
                    return "null";
                  }
                },
                // controller: signUpController.fullName,
                keyboardType: TextInputType.name,
                hintText: "Expiry Date",
                labelText: "Expiry Date",
                prefixIcon: const Icon(
                  CustomIcons.calendar2,
                  color: tPrimaryColor,
                ),
              ),
            ),
            const Gap(10),
            Expanded(
              child: CustomTextFormField(
                autofillHints: const [AutofillHints.creditCardSecurityCode],
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter a valid name";
                  } else {
                    return "null";
                  }
                },
                // controller: signUpController.fullName,
                keyboardType: TextInputType.name,
                hintText: "CCV",
                labelText: "CCV",
                prefixIcon: const Icon(
                  CustomIcons.subtitles,
                  color: tPrimaryColor,
                ),
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
    } else if (selectedPaymentMethod == "Bank") {
      return [
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(labelText: "Account Number"),
        ),
        const TextField(
          decoration: InputDecoration(labelText: "Bank Name"),
        ),
        const TextField(
          decoration: InputDecoration(labelText: "Account Holder Name"),
        ),
      ];
    } else {
      return [];
    }
  }
}
