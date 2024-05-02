import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/image_picker/image_picker_bloc.dart";

class PhotoOrVideoUploadBottomsheet extends StatelessWidget {
  const PhotoOrVideoUploadBottomsheet({
    required this.controller,
    required this.activePageIndexNotifier,
    super.key,
  });

  final PageController controller;
  final ValueNotifier<int> activePageIndexNotifier;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    onPressedCameraCallback: () {
                      context.read<ImagePickerBloc>().add(
                            ImagePickerEvent.pickedImageFromGallery(
                              onSucccess: (imagePath) {},
                              onFailure: (message) {},
                            ),
                          );
                    },
                    onPressedGalleryCallback: () {},
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
      ),
    );
  }
}
