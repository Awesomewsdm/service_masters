import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/bloc/image_picker/image_repository.dart";

part "image_picker_bloc.freezed.dart";
part "image_picker_state.dart";
part "image_picker_event.dart";

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState()) {
    on<_PickImage>(_onPickImage);
    on<_RemoveImage>(_onRemovePickedImage);
  }

  Future<void> _onPickImage(
    _PickImage event,
    Emitter<ImagePickerState> emit,
  ) async {
    try {
      final image = await ImageRepository.pickImageFromDevice(event.source);
      final croppedImage = await ImageRepository.cropImage(image);
      if (croppedImage != null) {
        final updatedImageList = List<String>.from(state.imagePaths)
          ..add(croppedImage.path);

        emit(
          state.copyWith(
            imagePaths: updatedImageList,
            firstImageStatus: ImagePickerStatus.success,
          ),
        );
      }
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(
        state.copyWith(
          firstImageStatus: ImagePickerStatus.failure,
        ),
      );
    }
  }

  void _onRemovePickedImage(
    _RemoveImage event,
    Emitter<ImagePickerState> emit,
  ) {
    final updatedImageList = List<String>.from(state.imagePaths)
      ..removeAt(event.index);

    emit(
      state.copyWith(
        imagePaths: updatedImageList,
      ),
    );
  }
}
