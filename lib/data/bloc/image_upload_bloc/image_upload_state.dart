part of "image_upload_bloc.dart";

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState({
    required String imagePath,
    @Default(ImageUploadStatus.initial) ImageUploadStatus status,
  }) = _ImageUploadState;
}
