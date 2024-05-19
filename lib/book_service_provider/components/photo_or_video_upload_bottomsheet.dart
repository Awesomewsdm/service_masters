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
                valueListenable: activePageIndexNotifier,
                builder: (context, value, child) {
                  return Text(
                    "Upload Photo",
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: activePageIndexNotifier.value == 0
                          ? tPrimaryColor
                          : tPrimaryColor.withOpacity(
                              0.5,
                            ),
                      fontWeight: FontWeight.bold,
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
                valueListenable: activePageIndexNotifier,
                builder: (context, value, child) {
                  return Text(
                    "Upload Video",
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: activePageIndexNotifier.value == 1
                          ? tPrimaryColor
                          : tPrimaryColor.withOpacity(
                              0.5,
                            ),
                      fontWeight: FontWeight.bold,
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
                activePageIndexNotifier.value = value;
              },
              children: [
                PhotoOrVideoUploadView(
                  onPressedCameraCallback: onPressedCameraCallback,
                  onPressedGalleryCallback: onPressedGalleryCallback,
                ),
                PhotoOrVideoUploadView(
                  onPressedCameraCallback: () {},
                  onPressedGalleryCallback: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
