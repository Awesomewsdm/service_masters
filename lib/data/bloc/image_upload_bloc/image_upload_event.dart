part of "image_upload_bloc.dart";

@freezed
class ImageUploadEvent with _$ImageUploadEvent {
  const factory ImageUploadEvent.getImageFromGallery() = _GetImageFromGallery;
  const factory ImageUploadEvent.getImageFromCamera() = _GetImageFromCamera;
  const factory ImageUploadEvent.getVideoFromCamera() = _GetVideoFromCamera;
  const factory ImageUploadEvent.getVideoFromGallery() = _GetVideoFromGallery;
  const factory ImageUploadEvent.removeImage() = _RemoveImage;
  const factory ImageUploadEvent.cropImage() = _CropImage;
}
