import "package:service_masters/common/barrels.dart";

part "image_upload_bloc.freezed.dart";
part "image_upload_state.dart";
part "image_upload_event.dart";

class ImageUploadBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImageUploadBloc() : super(const ImageUploadState()) {
    on<_GetImageFromGallery>(_getImageFromGallery);
    on<_GetImageFromCamera>(_getImageFromCamera);
  }

  FutureOr<void> _getImageFromCamera(
    _GetImageFromCamera event,
    Emitter<ImageUploadState> emit,
  ) async {
    try {
      final image = await ImageHelper.getImageFromCamera();
      final croppedImage = await ImageHelper.cropImage(image);
      if (croppedImage != null) {
        emit(
          ImageUploadState(
            imagePath: croppedImage.path,
            status: ImageUploadStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        const ImageUploadState(
          status: ImageUploadStatus.failure,
        ),
      );
    }
  }

  FutureOr<void> _getImageFromGallery(
    _GetImageFromGallery event,
    Emitter<ImageUploadState> emit,
  ) async {
    try {
      final image = await ImageHelper.getImageFromGallery();
      final croppedImage = await ImageHelper.cropImage(image);
      if (croppedImage != null) {
        emit(
          ImageUploadState(
            imagePath: croppedImage.path,
            status: ImageUploadStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        const ImageUploadState(
          status: ImageUploadStatus.failure,
        ),
      );
    }
  }
}
