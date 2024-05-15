import "package:service_masters/common/barrels.dart";

class PhotoOrVideoUploadView extends StatelessWidget {
  const PhotoOrVideoUploadView({
    required this.onPressedCameraCallback,
    required this.onPressedGalleryCallback,
    super.key,
  });
  final void Function() onPressedCameraCallback;
  final void Function() onPressedGalleryCallback;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Select an option",
              style: context.textTheme.bodyLarge!.copyWith(
                color: tPrimaryColor,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Text(
                "Cancel",
                style: context.textTheme.bodyLarge!.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        const Gap(10),
        SecondaryButtonWithIcon(
          labelColor: tPrimaryColor,
          onPressed: onPressedCameraCallback,
          label: "Camera",
          icon: tCamera2,
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
        ),
        const Spacer(),
        SecondaryButtonWithIcon(
          labelColor: tPrimaryColor,
          onPressed: onPressedGalleryCallback,
          label: "Gallery",
          icon: tGalleryImport,
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
