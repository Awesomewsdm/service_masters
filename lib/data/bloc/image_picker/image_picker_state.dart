part of "image_picker_bloc.dart";

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState({
    @Default(ImagePickerStatus.initial) ImagePickerStatus firstImageStatus,
    @Default("") String firstImagePath,
    @Default(ImagePickerStatus.initial) ImagePickerStatus secondImageStatus,
    @Default("") String secondImagePath,
    @Default(ImagePickerStatus.initial) ImagePickerStatus thirdImageStatus,
    @Default("") String thirdImagePath,
  }) = _ImagePickerState;
}
