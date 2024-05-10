part of "image_upload_bloc.dart";

@freezed
class ImageUploadEvent with _$ImageUploadEvent {
  const factory ImageUploadEvent.pickedImageFromGallery({
    required void Function(String imagePath) onSucccess,
    required void Function(String message) onFailure,
  }) = _PickedImageFromGallery;
  const factory ImageUploadEvent.pickedImageFromCamera({
    required void Function(String imagePath) onSucccess,
    required void Function(String message) onFailure,
  }) = _PickedImageFromCamera;
}
