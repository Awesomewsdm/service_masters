import "dart:io";

import "package:service_masters/common/barrels.dart";

class ChangePhotoOrVideoWidget extends StatelessWidget {
  const ChangePhotoOrVideoWidget({
    required this.filePath,
    required this.onRemoveImageCallback,
    super.key,
  });
  final String filePath;
  final void Function() onRemoveImageCallback;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.file(
          fit: BoxFit.cover,
          File(filePath),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: GestureDetector(
              onTap: onRemoveImageCallback,
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
          child: GestureDetector(
            onTap: () => Utils.showCustomBottomsheet(
              context: context,
              widget: PhotoOrVideoUploadBottomsheet(
                controller: PageController(),
                activePageIndexNotifier: ValueNotifier<int>(0),
                onPressedCameraCallback: () {
                  context.read<ImagePickerBloc>().add(
                        const ImagePickerEvent.onPickImage(
                          source: ImageSource.camera,
                        ),
                      );
                },
                onPressedGalleryCallback: () {
                  context.read<ImagePickerBloc>().add(
                        const ImagePickerEvent.onPickImage(
                          source: ImageSource.gallery,
                        ),
                      );
                },
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Center(
                child: Text("Change Photo"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
