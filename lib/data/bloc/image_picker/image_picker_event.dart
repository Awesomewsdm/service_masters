part of "image_picker_bloc.dart";

@freezed
class ImagePickerEvent with _$ImagePickerEvent {
  const factory ImagePickerEvent.onPickImage({
    required ImageSource source,
  }) = _OnPickImage;
  const factory ImagePickerEvent.onRemoveImage() = _onRemoveImage;
}
