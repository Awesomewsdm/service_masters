import "package:service_masters/book_service_provider/components/booking_date_and_time_widget.dart";
import "package:service_masters/book_service_provider/components/first_image_picker_widget.dart";
import "package:service_masters/book_service_provider/components/input_service_address.dart";
import "package:service_masters/book_service_provider/components/input_service_description.dart";
import "package:service_masters/book_service_provider/components/second_image_picker_widget.dart";
import "package:service_masters/book_service_provider/components/third_image_picker_widget.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends HookWidget {
  const BookServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: "Book Service".text,
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            BookingDateAndTime(),
            const Gap(10),
            Text(
              "Address",
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Enter the address where you need the service.",
            ),
            const Gap(4),
            InputServiceAddress(),
            const Gap(12),
            Text(
              "Add some description",
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Describe the service you need in detail. The more details you provide, the better the service provider can understand your needs.",
            ),
            const Gap(4),
            const InputServiceDescription(),
            const Gap(12),
            Text(
              "Add photo or video (optional)",
              style: context.textTheme.bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Add photos or videos to help the service provider understand your needs better.",
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FirstImagePickerWidget(
                  controller: PageController(),
                  activePageIndexNotifier: ValueNotifier<int>(0),
                ),
                const Gap(10),
                SecondImagePickerWidget(
                  controller: PageController(),
                  activePageIndexNotifier: ValueNotifier<int>(0),
                ),
                const Gap(10),
                ThirdImagePickerWidget(
                  controller: PageController(),
                  activePageIndexNotifier: ValueNotifier<int>(0),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton:
          BlocSelector<BookServiceProviderBloc, BookServiceProviderState, bool>(
        selector: (state) {
          return state.isFormValid;
        },
        builder: (context, isFormValid) {
          return PrimaryBottomButton(
            label: "Book Service",
            backgroundColor: isFormValid ? tPrimaryColor : Colors.grey,
            onPressed: isFormValid
                ? () {
                    context.router.push(
                      const BookingSummaryRoute(),
                    );
                  }
                : null,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
