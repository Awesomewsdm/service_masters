import "dart:io";

import "package:flutter/material.dart";
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
                                    Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: context.screenWidth / 10,
                                            child: const Divider(
                                              thickness: 5,
                                            ),
                                          ),
                                          const Gap(10),
                                          Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  controller.animateToPage(
                                                    0,
                                                    duration: const Duration(
                                                      milliseconds: 300,
                                                    ),
                                                    curve: Curves.easeInOut,
                                                  );
                                                },
                                                child: ValueListenableBuilder(
                                                  valueListenable:
                                                      activePageIndexNotifier,
                                                  builder:
                                                      (context, value, child) {
                                                    return Text(
                                                      "Upload Photo",
                                                      style: context
                                                          .textTheme.bodyLarge!
                                                          .copyWith(
                                                        color:
                                                            activePageIndexNotifier
                                                                        .value ==
                                                                    0
                                                                ? tPrimaryColor
                                                                : tPrimaryColor
                                                                    .withOpacity(
                                                                    0.5,
                                                                  ),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              const Gap(20),
                                              GestureDetector(
                                                onTap: () {
                                                  controller.animateToPage(
                                                    1,
                                                    duration: const Duration(
                                                      milliseconds: 300,
                                                    ),
                                                    curve: Curves.easeInOut,
                                                  );
                                                },
                                                child: ValueListenableBuilder(
                                                  valueListenable:
                                                      activePageIndexNotifier,
                                                  builder:
                                                      (context, value, child) {
                                                    return Text(
                                                      "Upload Video",
                                                      style: context
                                                          .textTheme.bodyLarge!
                                                          .copyWith(
                                                        color:
                                                            activePageIndexNotifier
                                                                        .value ==
                                                                    1
                                                                ? tPrimaryColor
                                                                : tPrimaryColor
                                                                    .withOpacity(
                                                                    0.5,
                                                                  ),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          Flexible(
                                            child: SizedBox(
                                              width: context.screenWidth,
                                              height: context.screenHeight,
                                              child: PageView(
                                                controller: controller,
                                                onPageChanged: (value) {
                                                  activePageIndexNotifier
                                                      .value = value;
                                                },
                                                children: [
                                                  Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Select an option",
                                                            style: context
                                                                .textTheme
                                                                .bodyLarge!
                                                                .copyWith(
                                                              color:
                                                                  tPrimaryColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Cancel",
                                                            style: context
                                                                .textTheme
                                                                .bodyLarge!
                                                                .copyWith(
                                                              color: Colors.red,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const Gap(10),
                                                      SecondaryButtonWithIcon(
                                                        labelColor:
                                                            tPrimaryColor,
                                                        onPressed: () {
                                                          context
                                                              .read<
                                                                  ImageUploadBloc>()
                                                              .add(
                                                                const ImageUploadEvent
                                                                    .getImageFromCamera(),
                                                              );
                                                        },
                                                        label: "Camera",
                                                        icon: tCamera2,
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      SecondaryButtonWithIcon(
                                                        labelColor:
                                                            tPrimaryColor,
                                                        onPressed: () {
                                                          context
                                                              .read<
                                                                  ImageUploadBloc>()
                                                              .add(
                                                                const ImageUploadEvent
                                                                    .getImageFromGallery(),
                                                              );
                                                        },
                                                        label: "Gallery",
                                                        icon: tGalleryImport,
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Select an option",
                                                            style: context
                                                                .textTheme
                                                                .bodyLarge!
                                                                .copyWith(
                                                              color:
                                                                  tPrimaryColor,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Cancel",
                                                            style: context
                                                                .textTheme
                                                                .bodyLarge!
                                                                .copyWith(
                                                              color:
                                                                  tPrimaryColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const Gap(10),
                                                      SecondaryButtonWithIcon(
                                                        labelColor:
                                                            tPrimaryColor,
                                                        onPressed: () {
                                                          context
                                                              .read<
                                                                  ImageUploadBloc>()
                                                              .add(
                                                                const ImageUploadEvent
                                                                    .getVideoFromCamera(),
                                                              );
                                                        },
                                                        label: "Camera",
                                                        icon: tCamera2,
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                      SecondaryButtonWithIcon(
                                                        labelColor:
                                                            tPrimaryColor,
                                                        onPressed: () {
                                                          context
                                                              .read<
                                                                  ImageUploadBloc>()
                                                              .add(
                                                                const ImageUploadEvent
                                                                    .getVideoFromGallery(),
                                                              );
                                                        },
                                                        label: "Gallery",
                                                        icon: tGalleryImport,
                                                        backgroundColor:
                                                            MaterialStateProperty
                                                                .all<Color>(
                                                          Colors.white,
                                                        ),
                                                      ),
                                                      const Spacer(),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                      AddPhotoOrVideoWidget(
                                        onTap: () {},
                                      ),
                                    ImageUploadStatus.loading => const Center(
                                        child: CircularProgressIndicator(
                                          color: tPrimaryColor,
                                        ),
                                      ),
                                    ImageUploadStatus.success => Stack(
                                        children: [
                                          Image.file(
                                            fit: BoxFit.cover,
                                            File(
                                              imageUploadState.imagePath,
                                            ),
                                          ),
                                          Positioned(
                                            right: 0,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<ImageUploadBloc>()
                                                      .add(
                                                        const ImageUploadEvent
                                                            .removeImage(),
                                                      );
                                                },
                                                child: const Icon(
                                                  CustomIcons.closeSquare,
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 2,
                                            left: 2,
                                            right: 2,
                                            child: Container(
                                              margin: const EdgeInsets.all(5),
                                              padding: const EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: const Center(
                                                child: Text("Change Photo"),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ImageUploadStatus.failure => AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        content: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Error",
                                              style:
                                                  context.textTheme.labelSmall,
                                            ),
                                            const Gap(20),
                                            Text(
                                              " An error occurred while uploading the image. Please try again.",
                                              style:
                                                  context.textTheme.bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ImageUploadStatus.empty => AlertDialog(
                                        shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10),
                                          ),
                                        ),
                                        content: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Error",
                                              style:
                                                  context.textTheme.labelSmall,
                                            ),
                                            const Gap(20),
                                            Text(
                                              "No image selected. Please select an image.",
                                              style:
                                                  context.textTheme.bodyMedium,
                                            ),
                                          ],
                                        ),
                                      ),
                                  },
                                ),
                              ),
                            ),
                            const Spacer(),
                            Expanded(
                              flex: 5,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: tPrimaryColor.withOpacity(0.5),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color: backgroundColor1,
                                  ),
                                  // child:
                                ),
                              ),
                            ),
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
