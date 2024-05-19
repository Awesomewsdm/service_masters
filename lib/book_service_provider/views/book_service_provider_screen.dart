import "package:intl/intl.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends HookWidget {
  const BookServiceProviderScreen({
    required this.serviceProvider,
    super.key,
  });
  final ServiceProvider serviceProvider;

  @override
  Widget build(BuildContext context) {
    final controller = usePageController();
    final activePageIndexNotifier = useState<int>(0);
    final imagePathsLength =
        context.select((ImagePickerBloc bloc) => bloc.state.imagePaths.length);
    final imagePickerStatus =
        context.select((ImagePickerBloc bloc) => bloc.state.firstImageStatus);
    final addressController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final dateController = useTextEditingController();
    final timeController = useTextEditingController();
    final customer = context.select((AppBloc bloc) => bloc.state.customer);

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
            BookingDateAndTime(
              timeController: timeController,
              dateController: dateController,
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
            InputServiceAddress(
              controller: addressController,
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
            InputServiceDescription(
              controller: descriptionController,
            ),
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
              children: List.generate(
                3,
                (index) => Expanded(
                  child: Container(
                    height: 100,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: tPrimaryColor.withOpacity(0.5),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: backgroundColor1,
                    ),
                    child: imagePickerStatus == ImagePickerStatus.loading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: tPrimaryColor,
                            ),
                          )
                        : imagePickerStatus == ImagePickerStatus.success &&
                                (index < imagePathsLength)
                            ? ChangePhotoOrVideoWidget(
                                filePath: index < imagePathsLength
                                    ? context
                                        .read<ImagePickerBloc>()
                                        .state
                                        .imagePaths[index]
                                    : "",
                                onRemoveImageCallback: () =>
                                    context.read<ImagePickerBloc>().add(
                                          ImagePickerEvent.onRemoveImage(
                                            index: index,
                                          ),
                                        ),
                              )
                            : imagePickerStatus == ImagePickerStatus.failure
                                ? const CustomAlertDialog()
                                : AddPhotoOrVideoWidget(
                                    onTapCallback: () {
                                      Utils.showCustomBottomsheet(
                                        context: context,
                                        widget: PhotoOrVideoUploadBottomsheet(
                                          controller: controller,
                                          activePageIndexNotifier:
                                              activePageIndexNotifier,
                                          onPressedCameraCallback: () {
                                            context.read<ImagePickerBloc>().add(
                                                  const ImagePickerEvent
                                                      .onPickImage(
                                                    source: ImageSource.camera,
                                                  ),
                                                );
                                          },
                                          onPressedGalleryCallback: () {
                                            context.read<ImagePickerBloc>().add(
                                                  const ImagePickerEvent
                                                      .onPickImage(
                                                    source: ImageSource.gallery,
                                                  ),
                                                );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          BlocBuilder<BookServiceProviderBloc, BookServiceProviderState>(
        builder: (context, state) {
          return PrimaryBottomButton(
            label: "Book Service",
            backgroundColor: state.isFormValid ? tPrimaryColor : Colors.grey,
            onPressed: state.isFormValid
                ? () {
                    final bookServiceProvider = BookServiceProvider(
                      id: "Uuid().v1()",
                      customerId: customer.id,
                      serviceProviderId: serviceProvider.providerId ?? "",
                      bookingDate:
                          DateFormat("M/d/yyyy").parse(state.date.value),
                      bookingTime: state.time.value,
                      description: state.description.value,
                      address: state.address.value,
                      serviceId: serviceProvider.serviceId ?? "",
                      status: "0",
                      mediaFilesUrl: context
                          .read<ImagePickerBloc>()
                          .state
                          .imagePaths
                          .map((e) => e)
                          .toList(),
                    );

                    context.router.push(
                      BookingSummaryRoute(
                        serviceProvider: serviceProvider,
                        bookServiceProvider: bookServiceProvider,
                      ),
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
