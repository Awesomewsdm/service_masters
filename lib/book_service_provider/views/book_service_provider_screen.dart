import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends HookWidget {
  const BookServiceProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final activePageIndexNotifier = ValueNotifier<int>(0);
    final controller = usePageController();

    return BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
      builder: (context, bookServiceProviderState) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: "Book Service".text,
            centerTitle: true,
          ),
          body: BlocBuilder<DateTimeCubit, DateTimeState>(
            builder: (context, dateTimeState) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(16.0),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 10,
                          child: SizedBox(
                            width: context.screenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Date",
                                  style: context.textTheme.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(10),
                                CustomTextField(
                                  fillColor: backgroundColor1,
                                  readOnly: true,
                                  onTap: () => selectDate(context),
                                  onChanged: (date) {
                                    context.read<BookServiceProviderBloc>().add(
                                          BookServiceProviderEvent.serviceDate(
                                            date as DateTime,
                                          ),
                                        );
                                  },
                                  controller: TextEditingController(
                                    text: dateTimeState.selectedDate
                                        .toLocal()
                                        .toString()
                                        .split(" ")[0],
                                  ),
                                  hintText: "Select Date",
                                  suffixIcon: const Icon(CustomIcons.calendar),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Spacer(),
                        Flexible(
                          flex: 10,
                          child: SizedBox(
                            width: context.screenWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Time",
                                  style: context.textTheme.bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                const Gap(10),
                                CustomTextField(
                                  fillColor: backgroundColor1,
                                  controller: TextEditingController(
                                    text: dateTimeState.selectedTime
                                        .format(context),
                                  ),
                                  onChanged: (time) {
                                    context.read<BookServiceProviderBloc>().add(
                                          BookServiceProviderEvent.serviceTime(
                                            time,
                                          ),
                                        );
                                  },
                                  readOnly: true,
                                  onTap: () => selectTime(context),
                                  hintText: "",
                                  suffixIcon:
                                      const Icon(CustomIcons.timeCircle),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
                    BlocBuilder<ImageUploadBloc, ImageUploadState>(
                      builder: (context, imageUploadState) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 5,
                              child: GestureDetector(
                                onTap: () {
                                  showCustomBottomsheet(
                                    context,
                                    PhotoOrVideoUploadBottomsheet(
                                        controller: controller,
                                        activePageIndexNotifier:
                                            activePageIndexNotifier),
                                  );
                                },
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tPrimaryColor.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: backgroundColor1,
                                  ),
                                  child: switch (imageUploadState.status) {
                                    ImageUploadStatus.initial =>
                                      const AddPhotoOrVideoWidget(),
                                    ImageUploadStatus.loading => const Center(
                                        child: CircularProgressIndicator(
                                          color: tPrimaryColor,
                                        ),
                                      ),
                                    ImageUploadStatus.success =>
                                      ChangePhotoOrVideoWidget(
                                        filePath: imageUploadState.imagePath,
                                      ),
                                    ImageUploadStatus.failure =>
                                      const CustomAlertDialog(),
                                    ImageUploadStatus.empty =>
                                      const AddPhotoOrVideoWidget(),
                                  },
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          floatingActionButton: PrimaryBottomButton(
            label: "Book Service",
            onPressed: () {
              // context.read<BookServiceProviderBloc>().add(
              // BookServiceProviderEvent.bookServiceProvider(
              //   BookServiceProvider(

              //     id: ,
              //     serviceId: ,
              //     customerId: ,
              //     serviceProviderId: ,
              //     bookingDate: DateTime.parse(bookServiceProviderState.date.value),
              //     bookingTime: bookServiceProviderState.time.value,
              //     description: bookServiceProviderState.description.value,
              //     status: ,
              //   ),
              // ),
              // );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
