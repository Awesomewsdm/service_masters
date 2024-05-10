import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/image_picker/image_picker_bloc.dart";

class FirstImagePickerWidget extends HookWidget {
  const FirstImagePickerWidget({
    required this.controller,
    required this.activePageIndexNotifier,
    super.key,
  });
  final PageController controller;
  final ValueNotifier<int> activePageIndexNotifier;

  @override
  Widget build(BuildContext context) {
    final status = useState(ImagePickerStatus.initial);
    return Expanded(
      child: GestureDetector(
        onTap: () {
          showCustomBottomsheet(
            context,
            PhotoOrVideoUploadBottomsheet(
              controller: controller,
              activePageIndexNotifier: activePageIndexNotifier, 
              onPressedCameraCallback: () {  }, 
              onPressedGalleryCallback: () {  },
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
          child: switch (status.value) {
            ImagePickerStatus.initial => AddPhotoOrVideoWidget(
                onTapCallback: () {
                  showCustomBottomsheet(
                    context,
                    PhotoOrVideoUploadBottomsheet(
                      controller: controller,
                      activePageIndexNotifier: activePageIndexNotifier,
                      onPressedCameraCallback: () {
                        context.read<ImagePickerBloc>().add(ImagePickerEvent.onPickFirstImageFromGallery(
                            imagePath: ,
                        ));
                      },
                      onPressedGalleryCallback: () {
                        // context.read<ImagePickerBloc>().add(ImagePickerEvent.onPickFirstImageFromCamera(
                        //     imagePath: ,
                        // ));
                      },
                    ),
                  );
                },
              ),
            ImagePickerStatus.loading => const Center(
                child: CircularProgressIndicator(
                  color: tPrimaryColor,
                ),
              ),
            ImagePickerStatus.success => ChangePhotoOrVideoWidget(
                filePath: context.watch<ImagePickerBloc>().state.firstImagePath,
              ),
            ImagePickerStatus.failure => const CustomAlertDialog(),
          },
        ),
      ),
    );
  }
}
