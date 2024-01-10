import "package:service_masters/common/barrels.dart";

@RoutePage()
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(tVisa),
                const Gap(5),
                Image.asset(tMastercard),
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  tMTNMoMoLogo,
                  height: 25,
                ),
                const Gap(3),
                Image.asset(
                  tVodafoneCashLogo,
                  height: 25,
                ),
                const Gap(3),
                Image.asset(
                  tAirtelTigoCashLogo,
                  height: 25,
                ),
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
              size: 30,
            ),
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (String? value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
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
            onPressed: () => context.router.push(const PaymentRoute()),
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
