import "dart:io";

import "package:service_masters/booking_summary/view/components/order_summary_card.dart";
import "package:service_masters/booking_summary/view/components/price_detailts_card.dart";
import "package:service_masters/bookings/view/ani.dart";
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
              const PriceDetailsCard(),
              const Gap(10),
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

class ImageFilesWidget extends StatelessWidget {
  const ImageFilesWidget({required this.imagePaths, super.key});
  final List<String> imagePaths;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Images",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          Row(
            children: imagePaths
                .map(
                  (e) => Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image(
                        image: FileImage(File(e)),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
