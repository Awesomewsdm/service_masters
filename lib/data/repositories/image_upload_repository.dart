import "dart:io";
import "package:image_picker/image_picker.dart";
import "package:service_masters/data/services/image_upload_service.dart";

typedef ImageUploadWorker = ({String imagePath, File imageFile});

class ImageRepository {
  final _imageUploadService = ImagePicker();

  Future<Result> uploadImage(ImageUploadWorker worker) async {
    try {
      final image = await _imageUploadService.pickImage(
        source: ImageSource.gallery,
      );
      if (image != null) {
        final imageFile = File(image.path);
        final imagePath = image.path;
        return await worker(imageFile: imageFile, imagePath: imagePath);
      } else {
        return Result.failure("No image selected");
      }
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
