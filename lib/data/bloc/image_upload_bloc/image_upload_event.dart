part of "image_upload_bloc.dart";

@freezed
class ImageUploadEvent with _$ImageUploadEvent {
  const factory ImageUploadEvent.onPickFirstImageFromGallery({
    required String imagePath,
  }) = _OnPickFirstImageFromGallery;
  const factory ImageUploadEvent.onPickSecondImageFromGallery({
    required String imagePath,
  }) = _OnPickSecondImageFromGallery;
  const factory ImageUploadEvent.onPickThirdImageFromGallery({
    required String imagePath,
  }) = _OnPickThirdImageFromGallery;
}
