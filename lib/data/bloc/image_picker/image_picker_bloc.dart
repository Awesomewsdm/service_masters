import "package:service_masters/common/barrels.dart";

part "image_picker_bloc.freezed.dart";
part "image_picker_state.dart";
part "image_picker_event.dart";

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  ImagePickerBloc() : super(const ImagePickerState()) {
    // on<_OnPickFirstImageFromGallery>(_onPickFirstImageFromGallery);
    // on<_OnPickSecondImageFromGallery>(_onPickSecondImageFromGallery);
    // on<_OnPickThirdImageFromGallery>(_onPickThirdImageFromGallery);
  }

  // Future<void> _onPickFirstImageFromGallery(
  //   _OnPickFirstImageFromGallery event,
  //   Emitter<ImageUploadState> emit,
  // ) async {
  //   emit(
  //     state.copyWith(
  //       firstImagePath: event.imagePath,
  //     ),
  //   );
  // }

  // Future<void> _onPickSecondImageFromGallery(
  //   _OnPickSecondImageFromGallery event,
  //   Emitter<ImageUploadState> emit,
  // ) async {
  //   emit(state.copyWith(
  //     secondImagePath: event.imagePath,
  //   ));
  // }

  // Future<void> _onPickThirdImageFromGallery(
  //   _OnPickThirdImageFromGallery event,
  //   Emitter<ImageUploadState> emit,
  // ) async {
  //   emit(state.copyWith(
  //     thirdImagePath: event.imagePath,
  //   ));
  // }
}
