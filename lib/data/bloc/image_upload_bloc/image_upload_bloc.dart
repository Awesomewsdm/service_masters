
import "package:service_masters/common/barrels.dart";
part "image_upload_event.dart";
part "image_upload_state.dart";

class ImageUploadBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImageUploadBloc() : super(const ImageUploadState()) {
    // on<ChangeProfileImageFromGalleryEvent>(
    //   _handleChangeProfileImageFromGallery,
    // );
    // on<ChangeProfileImageFromCameraEvent>(_handleChangeProfileImageFromCamera);
    // on<ChangeProfileImageFromGalleryEvent>(
    //     _handleChangeProfileImageFromGallery);
  }

  // final ImageRepository _imageRepository = ImageRepository();

  // Future<void> _handleChangeProfileImageFromGallery(
  //   ChangeProfileImageFromGalleryEvent event,
  //   Emitter<ImageUploadState> emit,
  // ) async {
  //   // try {
  //   //   final getImageFromGallery = await ImageHelper.getImageFromGallery();
  //   //   final croppedGalleryImageFile =
  //   //       await ImageHelper.cropImage(getImageFromGallery);

  //   //   event.onSuccess("Profile image changed successfully");

  //   //   emit(
  //   //     ImageUploadSuccess(
  //   //       message: "Profile image changed",
  //   //       imagePath: croppedGalleryImageFile!.path,
  //   //     ),
  //   //   );
  //   // } catch (e) {
  //   //   logger.e("Error in image upload: $e");
  //   //   emit(const ImageUploadFailure(message: "Failed to change profile image"));
  //   //   event.onFailure("Failed to change profile image");

  //   //   emit(const ImageUploadFailure(message: "Failed to change profile image"));
  //   // }
  // }
  // Future<void> _handleChangeProfileImageFromCamera(
  //   ChangeProfileImageFromCameraEvent event,
  //   Emitter<ImageUploadState> emit,
  // ) async {
  //   // try {
  //   //   final getImageFromCamera = await ImageHelper.getImageFromCamera();
  //   //   final croppedCameraImageFile =
  //   //       await ImageHelper.cropImage(getImageFromCamera);
  //   //   event.onSuccess("Profile image changed successfully");
  //   //   emit(
  //   //     ImageUploadSuccess(
  //   //       message: "Profile image changed",
  //   //       imagePath: croppedCameraImageFile!.path,
  //   //     ),
  //   //   );
  //   // } catch (e) {
  //   //   event.onFailure("Failed to change profile image");
  //   //   emit(const ImageUploadFailure(message: "Failed to change profile image"));
  //   // }
  // }

  // @override
  // ImageUploadState fromJson(Map<String, dynamic> json) {
  //   try {
  //     logger.d("fromJson: $json");
  //     return ImageUploadSuccess(
  //       imagePath: json["imagePath"] as String,
  //     );
  //   } catch (e) {
  //     logger.e(
  //       "Error parsing JSON in ImageUploaderBloc: $e",
  //     );
  //     return ImageUploadStateInitial();
  //   }
  // }

  // @override
  // Map<String, dynamic> toJson(ImageUploadState state) {
  //   logger.d("toJson: $state");
  //   if (state is ImageUploadSuccess) {
  //     return {
  //       "imagePath": state.imagePath,
  //     };
  //   }
  //   return {};
  // }
}
