part of "image_picker_bloc.dart";

@freezed
class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.pickedImageFromGallery({
    required void Function(String imagePath) onSucccess,
    required void Function(String message) onFailure,
  }) = _PickedImageFromGallery;
  const factory ImagePickerEvent.pickedImageFromCamera({
    required void Function(String imagePath) onSucccess,
    required void Function(String message) onFailure,
  }) = _PickedImageFromCamera;
}
