import "package:service_masters/book_service_provider/components/booking_date_and_time_widget.dart";
import "package:service_masters/book_service_provider/components/input_service_address.dart";
import "package:service_masters/book_service_provider/components/input_service_description.dart";
import "package:service_masters/common/barrels.dart";

@RoutePage()
class BookServiceProviderScreen extends HookWidget {
  const BookServiceProviderScreen({super.key});

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
                                      showCustomBottomsheet(
                                        context,
                                        PhotoOrVideoUploadBottomsheet(
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
                    final bookServiceProvider = BookServiceProvider(
                      id: , 
                    customerId: customerId, 
                    serviceProviderId: , 
                    serviceId: serviceId, 
                    bookingDate: 
                    , 
                    bookingTime: bookingTime, 
                    status: status, 
                    description: description)
                    context.read<BookServiceProviderBloc>().add(
                          const BookServiceProviderEvent.bookServiceProvider(
                            
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
