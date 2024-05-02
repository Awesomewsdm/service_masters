part of "image_upload_bloc.dart";

@freezed
class ImageUploadState with _$ImageUploadState {
  const factory ImageUploadState({
    @Default(ImageUploadStatus.initial) ImageUploadStatus firstImageStatus,
    @Default("") String firstImagePath,
    @Default(ImageUploadStatus.initial) ImageUploadStatus secondImageStatus,
    @Default("") String secondImagePath,
    @Default(ImageUploadStatus.initial) ImageUploadStatus thirdImageStatus,
    @Default("") String thirdImagePath,
  }) = _ImageUploadState;
}
