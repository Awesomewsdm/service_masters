part of "image_picker_bloc.dart";

@freezed
class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.onPickFirstImageFromGallery() =
      _OnPickFirstImageFromGallery;
  const factory ImagePickerEvent.onPickSecondImageFromGallery() =
      _OnPickSecondImageFromGallery;
  const factory ImagePickerEvent.onPickThirdImageFromGallery() =
      _OnPickThirdImageFromGallery;
}
