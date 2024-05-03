import "package:service_masters/book_service_provider/components/booking_date_and_time_widget.dart";
import "package:service_masters/book_service_provider/components/first_image_picker_widget.dart";
import "package:service_masters/book_service_provider/components/second_image_picker_widget.dart";
import "package:service_masters/book_service_provider/components/third_image_picker_widget.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends HookWidget {
  const BookServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
      builder: (context, bookServiceProviderState) {
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
                CustomTextField(
                  fillColor: backgroundColor1,
                  hintText: "Your Location Address",
                  onChanged: (value) {
                    context.read<BookServiceProviderBloc>().add(
                          BookServiceProviderEvent.customerAddress(
                            value,
                          ),
                        );
                  },
                  errorText:
                      bookServiceProviderState.address.displayError != null
                          ? bookServiceProviderState.errorMessage
                          : null,
                  suffixIcon: IconButton(
                    icon: const Icon(
                      CustomIcons.location,
                      color: tPrimaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
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
                SizedBox(
                  height: 100,
                  child: CustomTextField(
                    fillColor: backgroundColor1,
                    hintText: "Input description",
                    expand: true,
                    onChanged: (value) {
                      context.read<BookServiceProviderBloc>().add(
                            BookServiceProviderEvent.serviceDescription(
                              value,
                            ),
                          );
                    },
                    controller: TextEditingController(
                      text: bookServiceProviderState.description.value,
                    ),
                    errorText:
                        bookServiceProviderState.description.displayError !=
                                null
                            ? bookServiceProviderState.errorMessage
                            : null,
                  ),
                ),
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
                    Gap(10),
                    SecondImagePickerWidget(
                      controller: PageController(),
                      activePageIndexNotifier: ValueNotifier<int>(0),
                    ),
                    Gap(10),
                    ThirdImagePickerWidget(
                      controller: PageController(),
                      activePageIndexNotifier: ValueNotifier<int>(0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          floatingActionButton: PrimaryBottomButton(
            label: "Book Service",
            backgroundColor: bookServiceProviderState.isFormValid
                ? tPrimaryColor
                : Colors.grey,
            onPressed: bookServiceProviderState.isFormValid
                ? () {
                    context.router.push(
                      const BookingSummaryRoute(),
                    );
                  }
                : null,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
