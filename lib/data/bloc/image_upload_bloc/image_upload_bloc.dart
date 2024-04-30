import "package:service_masters/common/barrels.dart";

part "image_upload_bloc.freezed.dart";
part "image_upload_state.dart";
part "image_upload_event.dart";

class ImageUploadBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImageUploadBloc() : super(const ImageUploadState()) {
    on<_GetImageFromGallery>(_onGetImageFromGallery);
    on<_GetImageFromCamera>(_onGetImageFromCamera);
    on<_GetVideoFromCamera>(_onGetVideoFromCamera);
    on<_GetVideoFromGallery>(_onGetVideoFromGallery);
    on<_RemoveImage>(_onRemoveImage);
  }

  FutureOr<void> _onGetImageFromCamera(
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

  FutureOr<void> _onGetVideoFromGallery(
    _GetVideoFromGallery event,
    Emitter<ImageUploadState> emit,
  ) async {
    try {
      final video = await ImageHelper.pickVideoFromGallery();
      if (video != null) {
        emit(
          ImageUploadState(
            imagePath: video.path,
            status: ImageUploadStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in uploading video: $e");
      emit(
        const ImageUploadState(
          status: ImageUploadStatus.failure,
        ),
      );
    }
  }
}

FutureOr<void> _onGetVideoFromCamera(
  _GetVideoFromCamera event,
  Emitter<ImageUploadState> emit,
) async {
  try {
    final video = await ImageHelper.pickVideoFromCamera();

    emit(
      ImageUploadState(
        imagePath: video!.path,
        status: ImageUploadStatus.success,
      ),
    );
  } catch (e) {
    logger.e("Error in uploading video: $e");
    emit(
      const ImageUploadState(
        status: ImageUploadStatus.failure,
      ),
    );
  }
}

FutureOr<void> _onGetImageFromGallery(
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

FutureOr<void> _onRemoveImage(
  _RemoveImage event,
  Emitter<ImageUploadState> emit,
) {
  emit(
    const ImageUploadState(
      status: ImageUploadStatus.loading,
    ),
  );
  try {
    emit(
      const ImageUploadState(status: ImageUploadStatus.empty),
    );
  } catch (e) {
    emit(
      const ImageUploadState(
        status: ImageUploadStatus.failure,
      ),
    );
  }
}
