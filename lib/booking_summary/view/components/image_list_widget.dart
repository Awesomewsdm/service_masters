import "dart:io";
import "package:service_masters/common/barrels.dart";

class ImageFilesWidget extends StatelessWidget {
  const ImageFilesWidget({required this.imagePaths, super.key});
  final List<String> imagePaths;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Images",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(10),
          Row(
            children: imagePaths
                .map(
                  (e) => Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image(
                        image: FileImage(File(e)),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
