import "package:home_service_app/common/barrels.dart";
import "package:home_service_app/payment/components/payment_fields.dart";
import "package:home_service_app/payment/components/payment_method_button.dart";

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = "";
  String selectedNetwork = "MTN";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Select Payment Method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          PaymentMethodButton(
            method: "Credit Card",
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(tMastercard),
                Image.asset(tVisa),
              ],
            ),
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (String? value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          PaymentMethodButton(
            method: "Mobile Money",
            icon: Row(
              children: [
                Image.asset(tMTNMoMoLogo),
                Image.asset(tVodafoneCashLogo),
                Image.asset(tAirtelTigoCashLogo),
              ],
            ),
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (String? value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          PaymentMethodButton(
            method: "Bank Transfer",
            icon: const Icon(
              Icons.account_balance,
            ),
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (String? value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: buildPaymentFields(
                  selectedPaymentMethod, context, selectedNetwork, (newValue) {
                setState(() {
                  selectedNetwork = newValue!;
                });
              }),
            ),
          ),
        ],
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
}
