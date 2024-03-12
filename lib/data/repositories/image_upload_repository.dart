import "dart:io";

import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/services.dart";
import "package:image_picker/image_picker.dart";
import "package:multiple_result/multiple_result.dart";

typedef ImageUploadWorker = ({String imagePath, File imageFile});

class ImageRepository {
  final _imagepPicker = ImagePicker();
  final _firestore = FirebaseFirestore.instance;

  Future<Result<ImageUploadWorker, String>> openGallery() async {
    try {
      final image = await _imagepPicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 50,
      );
      if (image != null) {
        final imageFile = File(image.path);
        final imagePath = image.path;
        return Result.success((imageFile: imageFile, imagePath: imagePath));
      } else {
        return const Result.error("No image selected");
      }
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<ImageUploadWorker, String>> openCamera() async {
    try {
      final image = await _imagepPicker.pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
      );
      if (image != null) {
        final imageFile = File(image.path);
        final imagePath = image.path;
        return Result.success((imageFile: imageFile, imagePath: imagePath));
      } else {
        return const Result.error("No image selected");
      }
    } on PlatformException catch (e) {
      return Result.error(e.toString());
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  Future<Result<void, String>> uploadImageToFirestore(File imageFile) async {
    try {
      final imageBytes = await imageFile.readAsBytes();
      final imageName = imageFile.path.split("/").last;
      final imageRef = _firestore.collection("customers").doc(imageName);
      await imageRef.set({"imageBytes": imageBytes});

      return const Result.success(null);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
