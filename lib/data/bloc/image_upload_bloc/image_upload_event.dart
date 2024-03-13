part of "image_upload_bloc.dart";

@freezed
class ImageUploadEvent with _$ImageUploadEvent {
  const factory ImageUploadEvent.getImageFromGallery(String imagePath) =
      _GetImageFromGallery;
  const factory ImageUploadEvent.getImageFromCamera(String imagePath) =
      _GetImageFromCamera;
  const factory ImageUploadEvent.cropImage(String imagePath) = _CropImage;
}
