import "package:service_masters/common/barrels.dart";

class PhotoOrVideoUploadWidget extends StatelessWidget {
  const PhotoOrVideoUploadWidget({
    required this.controller,
    required this.activePageIndexNotifier,
    required this.state,
    super.key,
  });

  final PageController controller;
  final ValueNotifier<int> activePageIndexNotifier;
  final ImageUploadState state;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
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
          child: switch (state.status) {
            ImageUploadStatus.initial => const AddPhotoOrVideoWidget(),
            ImageUploadStatus.loading => const Center(
                child: CircularProgressIndicator(
                  color: tPrimaryColor,
                ),
              ),
            ImageUploadStatus.success => ChangePhotoOrVideoWidget(
                filePath: state.imagePath,
              ),
            ImageUploadStatus.failure => const CustomAlertDialog(),
            ImageUploadStatus.empty => const AddPhotoOrVideoWidget(),
          },
        ),
      ),
    );
  }
}
