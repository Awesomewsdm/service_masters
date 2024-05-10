import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/image_picker/image_picker_bloc.dart";

class SecondImagePickerWidget extends HookWidget {
  const SecondImagePickerWidget(
      {required this.controller,
      required this.activePageIndexNotifier,
      super.key});
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
                      filePath: context
                          .watch<ImagePickerBloc>()
                          .state
                          .secondImagePath,
                    ),
                  ImagePickerStatus.failure => const CustomAlertDialog(),
                })));
  }
}
