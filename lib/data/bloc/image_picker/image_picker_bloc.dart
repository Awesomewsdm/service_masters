import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:image_picker_platform_interface/src/types/image_source.dart";
import "package:service_masters/data/bloc/image_upload_bloc/image_helper.dart";

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
      final image = await ImageHelper.getImageFromGallery();

      if (image == null) {
        event.onFailure("Image not selected");
        return;
      }
      final croppedImage = await ImageHelper.cropImage(image);
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
      final image = await ImageHelper.getImageFromCamera();

      if (image == null) {
        event.onFailure("Image not selected");
        return;
      }
      final croppedImage = await ImageHelper.cropImage(image);
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
