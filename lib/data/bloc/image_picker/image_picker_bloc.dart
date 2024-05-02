import "package:service_masters/common/barrels.dart";

part "image_picker_state.dart";
part "image_picker_event.dart";
part "image_picker_bloc.freezed.dart";

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState()) {
    on<_PickedImageFromGallery>(_onPickedImageFromGallery);
    on<_PickedImageFromCamera>(_onPickedImageFromCamera);
  }

  Future<void> _onPickedImageFromGallery(
    _PickedImageFromGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image =
          await ImageRepository.pickImageFromDevice(ImageSource.gallery);

      if (image == null) {
        event.onFailure("Image not selected");
        return;
      }
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage == null) {
        event.onFailure("Image not cropped");
        return;
      }
      event.onSucccess(croppedImage.path);
    } catch (e) {
      event.onFailure(e.toString());
    }
  }

  Future<void> _onPickedImageFromCamera(
    _PickedImageFromCamera event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image =
          await ImageRepository.pickImageFromDevice(ImageSource.camera);

      if (image == null) {
        event.onFailure("Image not selected");
        return;
      }
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage == null) {
        event.onFailure("Image not cropped");
        return;
      }
      event.onSucccess(croppedImage.path);
    } catch (e) {
      event.onFailure(e.toString());
    }
  }
}
