import "dart:io";

import "package:service_masters/common/barrels.dart";

class ChangePhotoOrVideoWidget extends StatelessWidget {
  const ChangePhotoOrVideoWidget({
    required this.filePath,
    super.key,
  });
  final String filePath;
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
              onTap: () {},
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
      ],
    );
  }
}
