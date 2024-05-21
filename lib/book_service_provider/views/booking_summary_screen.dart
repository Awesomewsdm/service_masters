import "package:intl/intl.dart";
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
    return BlocListener<BookServiceProviderBloc, BookServiceProviderState>(
      listener: (context, state) {
        if (state.status == BookServiceProviderStatus.bookingInProgress) {
          Utils.showAlertDialog(
            icon: const Center(child: CircularProgressIndicator()),
            context: context,
            info: state.status.message,
          );
        } else if (state.status == BookServiceProviderStatus.bookingSuccess) {
          Navigator.of(context).pop();
          Utils.showAlertDialogWithCustomActions(
            icon: CustomIcons.check,
            context: context,
            content: state.status.message,
            button1Label: "Go Home",
            button2Label: "View Bookings",
            title: "Booking Successful",
            onPressedCallback1: () {
              context.router.pushAndPopUntil(
                const DashboardRoute(),
                predicate: (route) => false,
              );
            },
            onPressedCallback2: () {
              context.router.pushAndPopUntil(
                const BookingsRoute(),
                predicate: (route) => false,
              );
            },
          );
        } else if (state.status == BookServiceProviderStatus.bookingFailure) {
          Utils.showAlertDialog(
            icon: const Icon(CustomIcons.dangerTriangle),
            context: context,
            info: state.status.message,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Booking Summary"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
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
                Text(
                  "Order Summary",
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                OrderSummaryCard(
                  orderId: "123456",
                  serviceName: serviceProvider.serviceName ?? "",
                  time: bookServiceProvider.bookingTime,
                  date: DateFormat("EEE, d MMM, yyyy").format(
                    bookServiceProvider.bookingDate,
                  ),
                  address: bookServiceProvider.address,
                ),
                const Gap(10),
                Text(
                  "Images",
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                if (bookServiceProvider.mediaFilesUrl != null &&
                    bookServiceProvider.mediaFilesUrl!.isNotEmpty)
                  ImageFilesWidget(
                    imagePaths: bookServiceProvider.mediaFilesUrl!,
                  ),
                const Gap(10),
                Text(
                  "Description",
                  style: context.textTheme.bodyLarge!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Container(
                    color: Colors.grey[100],
                    width: context.screenWidth,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        bookServiceProvider.description,
                        style: context.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                Text(
                  "Price",
                  style: context.textTheme.bodyLarge!.copyWith(
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
                const Gap(70),
              ],
            ),
          ),
        ),
        floatingActionButton: PrimaryBottomButton(
          label: "Confirm Booking",
          onPressed: () {
            context.read<BookServiceProviderBloc>().add(
                  BookServiceProviderEvent.bookServiceProvider(
                    bookServiceProvider: bookServiceProvider,
                    imageFiles: bookServiceProvider.mediaFilesUrl ?? [],
                    orderId: bookServiceProvider.id,
                  ),
                );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
