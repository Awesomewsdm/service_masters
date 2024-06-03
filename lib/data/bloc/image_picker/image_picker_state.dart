part of "image_picker_bloc.dart";

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState({
    @Default(ImagePickerStatus.initial) ImagePickerStatus firstImageStatus,
    @Default([]) List<String> imagePaths,
  }) = _ImagePickerState;
}
