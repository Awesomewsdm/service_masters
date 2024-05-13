import "package:service_masters/booking_summary/view/components/price_detailts_card.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookingSummaryScreen extends StatelessWidget {
  const BookingSummaryScreen({
    required this.bookServiceProvider,
    required this.serviceProvider,
    super.key,
  });
  final BookServiceProvider bookServiceProvider;
  final ServiceProvider serviceProvider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Booking Summary"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceProviderCardWidget(
                image: "https://via.placeholder.com/150",
                providerExpertise: "Electrician",
                providerName: "John Doe",
                rate: "GH₵ 50.00",
                rating: "4.5",
                totalJobs: "20",
              ),
              Gap(10),
              Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OrderSummaryCard(),
              Gap(10),
              Text(
                "Images",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Image(
                      image: AssetImage(tACRepair),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    child: Image(
                      image: AssetImage(tACRepair),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Flexible(
                    child: Image(
                      image: AssetImage(tACRepair),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
              Text(
                "Price",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Gap(10),
              PriceDetailsCard(),
              Gap(10),
            ],
          ),
        ),
      ),
      floatingActionButton: PrimaryBottomButton(
        label: "Confirm Booking",
        onPressed: () {
          // context.read<BookingSummaryCubit>().confirmBooking();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Order ID: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("1234567890"),
            ],
          ),
          Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service name:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "12th June 2021",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service time:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "12:00 PM",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Service address:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "12, Opebi Road, Ikeja",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
