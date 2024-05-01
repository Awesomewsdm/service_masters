part of "image_upload_bloc.dart";

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState({
    @Default(ImageUploadStatus.initial) ImageUploadStatus status,
    @Default("") String profileImagePath,
    @Default("") String bookingImagePath1,
    @Default("") String bookingImagePath2,
    @Default("") String bookingImagePath3,
  }) = _ImageUploadState;
}
