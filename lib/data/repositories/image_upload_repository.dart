import "dart:io";

import "package:service_masters/data/services/image_upload_service.dart";

class ImageRepository {
  final ImageService _imageService = ImageService();

  Future<void> uploadImage(
    File selectedImage,
    void Function(double) onProgress,
  ) async {
    try {
      await _imageService.uploadImage(selectedImage, onProgress);
    } catch (e) {
      rethrow;
    }
  }
}
