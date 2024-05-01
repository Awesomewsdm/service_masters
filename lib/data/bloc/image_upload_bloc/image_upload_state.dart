part of "image_upload_bloc.dart";

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState({
    @Default(ImageUploadStatus.initial) ImageUploadStatus status,
    @Default([]) List<String> imagePath,
    @Default([]) List<String> videoPath,
  }) = _ImageUploadState;
}
