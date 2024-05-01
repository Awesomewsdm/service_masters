import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Summary"),
      ),
      body: ListView(
        children: [
          const Gap(10),
          const Text(
            "Booking Summary",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          const Text(
            "Payment Method",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          // const PaymentMethodCard(),
          const Gap(10),
          const Text(
            "Address",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          //const AddressCard(),
          const Gap(10),
          const Text(
            "Description",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          // const DescriptionCard(),
          const Gap(10),
          PrimaryBottomButton(
            label: "Confirm Booking",
            onPressed: () {
              // context.read<BookingSummaryCubit>().confirmBooking();
            },
          ),
        ],
      ),
    );
  }
}
