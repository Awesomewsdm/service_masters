import "package:service_masters/common/barrels.dart";

class UploadPictureBottomSheet extends StatelessWidget {
  const UploadPictureBottomSheet({
    required this.size,
    required this.blocContext,
    super.key,
  });

  final Size size;
  final BuildContext blocContext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              width: size.width / 10,
              child: const Divider(
                thickness: 5,
              ),
            ),
            const Gap(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "select Upload Method",
                    style: TextStyle(
                      color: tPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: tPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const Gap(10),
            SecondaryButtonWithIcon(
              onPressed: () {
                // blocContext.read<ImageUploaderBloc>().add(
                //       ChangeProfileImageFromCameraEvent(
                //         onSuccess: (message) =>
                //             ImageSnackBarHelper.showSnackBar(
                //           context,
                //           message,
                //           true,
                //         ),
                //         onFailure: (message) =>
                //             ImageSnackBarHelper.showSnackBar(
                //           context,
                //           message,
                //           false,
                //         ),
                //         source: ImageSource.camera,
                //       ),
                //     );
              },
              label: "Camera",
              icon: Image.asset(
                tCamera2,
                color: tPrimaryColor,
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFFFFFFFF),
              ),
            ),
            SecondaryButtonWithIcon(
              onPressed: () async {
                // blocContext.read<ImageUploaderBloc>().add(
                //       ChangeProfileImageFromGalleryEvent(
                //         onSuccess: (message) =>
                //             ImageSnackBarHelper.showSnackBar(
                //           context,
                //           message,
                //           true,
                //         ),
                //         onFailure: (message) =>
                //             ImageSnackBarHelper.showSnackBar(
                //           context,
                //           message,
                //           false,
                //         ),
                //         source: ImageSource.gallery,
                //       ),
                //     );
              },
              label: "Gallery",
              icon: Image.asset(
                tGalleryImport,
                color: tPrimaryColor,
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
