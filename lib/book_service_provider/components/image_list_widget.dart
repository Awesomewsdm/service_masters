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
          border: Border.all(color: Colors.grey.shade300)),
      child: Row(
        children: imagePaths
            .map(
              (e) => Flexible(
                child: Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(right: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  child: Image(
                    fit: BoxFit.cover,
                    image: FileImage(File(e)),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
