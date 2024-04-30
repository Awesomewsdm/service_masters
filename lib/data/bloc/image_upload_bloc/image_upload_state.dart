part of "image_upload_bloc.dart";

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState({
    @Default(ImageUploadStatus.initial) ImageUploadStatus status,
    @Default(null) String imagePath,
  }) = _ImageUploadState;
}
