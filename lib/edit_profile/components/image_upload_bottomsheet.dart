import "package:service_masters/common/barrels.dart";

class ImageUploadBottomsheet extends StatelessWidget {
  const ImageUploadBottomsheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.35,
      minChildSize: 0.2,
      maxChildSize: 0.8,
      expand: false,
      builder: (
        BuildContext context,
        ScrollController scrollController,
      ) {
        return Container(
          height: context.screenHeight / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  width: context.screenWidth / 6,
                  child: const Divider(
                    thickness: 5,
                  ),
                ),
                const Gap(10),
                SecondaryButtonWithIcon(
                  onPressed: () {},
                  label: "Upload From Gallery",
                  icon: Image.asset(
                    tCamera2,
                    color: tPrimaryColor,
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    tPrimaryColor,
                  ),
                ),
                SecondaryButtonWithIcon(
                  onPressed: () {},
                  label: "Upload From Camera",
                  icon: Image.asset(
                    tGalleryImport,
                    color: tPrimaryColor,
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    tPrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
