import "package:service_masters/common/barrels.dart";

part "image_upload_state.dart";
part "image_upload_event.dart";
part "image_upload_bloc.freezed.dart";

class ImagePickerBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImagePickerBloc() : super(const ImageUploadState()) {
    // on<_PickedImageFromGallery>(_onPickedImageFromGallery);
    // on<_PickedImageFromCamera>(_onPickedImageFromCamera);
  }

  // Future<void> _onPickedImageFromGallery(
  //   _PickedImageFromGallery event,
  //   Emitter<ImagePickerState> emit,
  // ) async {
  //   try {
  //     final image =
  //         await ImageRepository.pickImageFromDevice(ImageSource.gallery);

  //     if (image == null) {
  //       event.onFailure("Image not selected");
  //       return;
  //     }
  //     final croppedImage = await ImageRepository.cropImage(image);
  //     if (croppedImage == null) {
  //       event.onFailure("Image not cropped");
  //       return;
  //     }
  //     event.onSucccess(croppedImage.path);
  //   } catch (e) {
  //     event.onFailure(e.toString());
  //   }
  // }

  // Future<void> _onPickedImageFromCamera(
  //   _PickedImageFromCamera event,
  //   Emitter<ImagePickerState> emit,
  // ) async {
  //   try {
  //     final image =
  //         await ImageRepository.pickImageFromDevice(ImageSource.camera);

  //     if (image == null) {
  //       event.onFailure("Image not selected");
  //       return;
  //     }
  //     final croppedImage = await ImageRepository.cropImage(image);
  //     if (croppedImage == null) {
  //       event.onFailure("Image not cropped");
  //       return;
  //     }
  //     event.onSucccess(croppedImage.path);
  //   } catch (e) {
  //     event.onFailure(e.toString());
  //   }
  // }
}
