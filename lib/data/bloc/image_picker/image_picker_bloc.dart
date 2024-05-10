import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/image_picker/image_repository.dart";

part "image_picker_bloc.freezed.dart";
part "image_picker_state.dart";
part "image_picker_event.dart";

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState()) {
    on<_OnPickFirstImageFromGallery>(_onPickFirstImageFromGallery);
    on<_OnPickSecondImageFromGallery>(_onPickSecondImageFromGallery);
    on<_OnPickThirdImageFromGallery>(_onPickThirdImageFromGallery);
  }

  Future<void> _onPickFirstImageFromGallery(
    _OnPickFirstImageFromGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image =
          await ImageRepository.pickImageFromDevice(ImageSource.gallery);
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage != null) {
        emit(
          ImagePickerState(
            firstImagePath: croppedImage.path,
            firstImageStatus: ImagePickerStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        const ImagePickerState(
          firstImageStatus: ImagePickerStatus.failure,
        ),
      );
    }
  }

  Future<void> _onPickSecondImageFromGallery(
    _OnPickSecondImageFromGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image =
          await ImageRepository.pickImageFromDevice(ImageSource.camera);
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage != null) {
        emit(
          ImagePickerState(
            secondImagePath: croppedImage.path,
            secondImageStatus: ImagePickerStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        const ImagePickerState(
          secondImageStatus: ImagePickerStatus.failure,
        ),
      );
    }
  }

  Future<void> _onPickThirdImageFromGallery(
    _OnPickThirdImageFromGallery event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image =
          await ImageRepository.pickImageFromDevice(ImageSource.gallery);
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage != null) {
        emit(
          ImagePickerState(
            thirdImagePath: croppedImage.path,
            thirdImageStatus: ImagePickerStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        const ImagePickerState(
          thirdImageStatus: ImagePickerStatus.failure,
        ),
      );
    }
  }
}
