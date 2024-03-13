import "package:service_masters/common/barrels.dart";

part "image_upload_bloc.freezed.dart";
part "image_upload_state.dart";
part "image_upload_event.dart";

class ImageUploadBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImageUploadBloc() : super(const ImageUploadState()) {
    on<_GetImageFromCamera>(_getImageFromCamera);
  }

  FutureOr<void> _getImageFromCamera(
    _GetImageFromCamera event,
    Emitter<ImageUploadState> emit,
  ) async {
    // final image = await ImagePicker().getImage(source: ImageSource.camera);
    // if (image != null) {
    //   emit(
    //     ImageUploadState(
    //       status: ImageUploadStatus.success,
    //       image: File(image.path),
    //     ),
    //   );
    // } else {
    //   emit(
    //     ImageUploadState(
    //       status: ImageUploadStatus.failure,
    //     ),
    //   );
    // }
  }
}
