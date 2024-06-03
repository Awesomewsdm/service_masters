import "package:service_masters/common/barrels.dart";

class PhotoOrVideoUploadBottomsheet extends StatelessWidget {
  const PhotoOrVideoUploadBottomsheet({
    required this.controller,
    required this.activePageIndexNotifier,
    required this.onPressedCameraCallback,
    required this.onPressedGalleryCallback,
    super.key,
  });

  final PageController controller;
  final ValueNotifier<int> activePageIndexNotifier;
  final void Function() onPressedCameraCallback;
  final void Function() onPressedGalleryCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.screenWidth / 6,
          child: const Divider(
            thickness: 5,
          ),
        ),
        const Gap(10),
        Flexible(
          child: SizedBox(
            width: context.screenWidth,
            height: context.screenHeight,
            child: PhotoOrVideoUploadView(
              onPressedCameraCallback: onPressedCameraCallback,
              onPressedGalleryCallback: onPressedGalleryCallback,
            ),
          ),
        ),
      ],
    );
  }
}
