part of "image_picker_bloc.dart";

@freezed
class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.onPickFirstImageFromGallery({
    required String imagePath,
  }) = _OnPickFirstImageFromGallery;
  const factory ImagePickerEvent.onPickSecondImageFromGallery({
    required String imagePath,
  }) = _OnPickSecondImageFromGallery;
  const factory ImagePickerEvent.onPickThirdImageFromGallery({
    required String imagePath,
  }) = _OnPickThirdImageFromGallery;
}
