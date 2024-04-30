import "package:service_masters/common/barrels.dart";

class AddPhotoOrVideoWidget extends StatelessWidget {
  const AddPhotoOrVideoWidget({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Icon(
            CustomIcons.camera2,
            color: tPrimaryColor,
            size: 40,
          ),
        ),
        Positioned(
          bottom: 2,
          left: 2,
          right: 2,
          child: Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Center(
              child: Text("Add Photo"),
            ),
          ),
        ),
      ],
    );
  }
}
