import "package:home_service_app/common/barrels.dart";

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = "";
  String selectedNetwork =
      ""; // Add this variable to track the selected network

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
            _buildPaymentMethodButton("Credit Card", Icons.credit_card),
            _buildPaymentMethodButton("Mobile Money", Icons.phone_android),
            _buildPaymentMethodButton("Bank", Icons.account_balance),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: _buildPaymentFields(),
              ),
            ),
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

  Widget _buildPaymentMethodButton(String method, IconData iconData) {
    return ListTile(
      leading: Radio(
        value: method,
        groupValue: selectedPaymentMethod,
        onChanged: (String? value) {
          setState(() {
            selectedPaymentMethod = value!;
          });
        },
      ),
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      title: Text(method),
      trailing: Icon(iconData),
      onTap: () {
        setState(() {
          selectedPaymentMethod = method;
        });
      },
    );
  }

  List<Widget> _buildPaymentFields() {
    if (selectedPaymentMethod == "Credit Card") {
      return [
        Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            // color: Colors.white,
          ),
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
            hintText: "Card Number",
            labelText: "Card Number",
            prefixIcon: const Icon(CustomIcons.user, color: tPrimaryColor),
          ),
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
          hintText: "Phone Number",
          labelText: "Phone Number",
          prefixIcon: const Icon(CustomIcons.user, color: tPrimaryColor),
        ),
        DropdownButtonFormField<String>(
          value: selectedNetwork,
          onChanged: (newValue) {
            setState(() {
              selectedNetwork = newValue!;
            });
          },
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Select a network";
            }
            return null;
          },
          items: const [
            DropdownMenuItem<String>(
              value: "MTN",
              child: Text("MTN"),
            ),
            DropdownMenuItem<String>(
              value: "Vodafone",
              child: Text("Vodafone"),
            ),
            // Add more network options as needed
          ],
          decoration: const InputDecoration(
            hintText: "Select Network",
            labelText: "Network",
            prefixIcon: Icon(CustomIcons.user, color: tPrimaryColor),
          ),
        ),
      ];
    } else if (selectedPaymentMethod == "Bank") {
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
          hintText: "Account Number",
          labelText: "Account Number",
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
          hintText: "Bank Number",
          labelText: "Bank Number",
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
          hintText: "Account Holder Name",
          labelText: "Account Holder Name",
          prefixIcon: const Icon(CustomIcons.user, color: tPrimaryColor),
        ),
      ];
    } else {
      return [];
    }
  }
}
