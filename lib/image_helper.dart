import "package:bank_app/common/constants/exports.dart";
import "package:bank_app/data/bloc/bloc_observer/app_bloc_observer.dart";

class ImageHelper {
  static final ImagePicker _picker = ImagePicker();
  static final ImageCropper _cropper = ImageCropper();

  static Future<XFile?> getImageFromGallery() async {
    try {
      return await _picker.pickImage(source: ImageSource.gallery);
    } catch (e) {
      logger.e("Error picking image from gallery: $e");
      return null;
    }
  }

  static Future<XFile?> getImageFromCamera() async {
    try {
      return await _picker.pickImage(source: ImageSource.camera);
    } catch (e) {
      logger.e("Error picking image from camera: $e");
      return null;
    }
  }

  static Future<CroppedFile?> cropImage(XFile? imageFile) async {
    if (imageFile == null) {
      return null;
    }

    try {
      return await _cropper.cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9,
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: "Crop Image",
            toolbarColor: tPrimaryColor,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
          ),
          IOSUiSettings(title: "Crop Image"),
        ],
      );
    } catch (e) {
      logger.e("Error cropping image: $e");
      return null;
    }
  }
}
