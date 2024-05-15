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
          height: context.screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ServiceProviderCardWidget(
                image: serviceProvider.profilePhoto ?? "",
                providerExpertise: serviceProvider.serviceName ?? "",
                providerName:
                    serviceProvider.firstName + serviceProvider.lastName,
                rate: "GH₵ 50.00",
                rating: "4.5",
                totalJobs: "20",
              ),
              const Gap(10),
              const Text(
                "Order Summary",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const OrderSummaryCard(
                orderId: "123456",
                serviceTime: "2 hours",
                time: "10:00 AM",
                date: "12th June 2021",
                address: "Accra, Ghana",
              ),
              const Gap(10),
              if (bookServiceProvider.mediaFilesUrl != null &&
                  bookServiceProvider.mediaFilesUrl!.isNotEmpty)
                ImageFilesWidget(
                  imagePaths: bookServiceProvider.mediaFilesUrl!,
                ),
              const Gap(10),
              const Text(
                "Price",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(10),
              const PriceDetailsCard(
                servicePrice: "GH₵ 50.00",
                serviceFee: "GH₵ 5.00",
                totalPrice: "GH₵ 50.00",
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
      floatingActionButton: PrimaryBottomButton(
        label: "Confirm Booking",
        onPressed: () {
          context.read<BookServiceProviderBloc>().add(
                BookServiceProviderEvent.bookServiceProvider(
                  bookServiceProvider,
                ),
              );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
