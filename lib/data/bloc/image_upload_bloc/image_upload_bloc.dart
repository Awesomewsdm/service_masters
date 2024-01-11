import "dart:io";

import "package:service_masters/common/barrels.dart";
import "package:service_masters/data/repositories/image_upload_repository.dart";

part "image_upload_event.dart";
part "image_upload_state.dart";

class ImageUploaderBloc
    extends HydratedBloc<ImageUploadEvent, ImageUploadState> {
  ImageUploaderBloc() : super(ImageUploadStateInitial()) {
    on<ChangeProfileImageFromGalleryEvent>(
      _handleChangeProfileImageFromGallery,
    );
    on<ChangeProfileImageFromCameraEvent>(_handleChangeProfileImageFromCamera);
    on<ImageSelectedEvent>(_onImageSelected);
    on<ImageUploadInProgressEvent>(_onImageUploadInProgress);
    on<ImageUploadSuccessEvent>(_onImageUploadSuccess);
    on<ImageUploadFailureEvent>(_onImageUploadFailure);
    on<UpdateUploadProgressEvent>(_onUpdateUploadProgress);
  }

  final ImageRepository _imageRepository = ImageRepository();

  Future<void> _handleChangeProfileImageFromGallery(
    ChangeProfileImageFromGalleryEvent event,
    Emitter<ImageUploadState> emit,
  ) async {
    try {
      final getImageFromGallery = await ImageHelper.getImageFromGallery();
      final croppedGalleryImageFile =
          await ImageHelper.cropImage(getImageFromGallery);

      event.onSuccess("Profile image changed successfully");

      emit(
        ImageUploadSuccess(
          message: "Profile image changed",
          imagePath: croppedGalleryImageFile!.path,
        ),
      );
    } catch (e) {
      logger.e("Error in image upload: $e");
      emit(const ImageUploadFailure(message: "Failed to change profile image"));
      event.onFailure("Failed to change profile image");

      emit(const ImageUploadFailure(message: "Failed to change profile image"));
    }
  }

  void _onImageSelected(
    ImageSelectedEvent event,
    Emitter<ImageUploadState> emit,
  ) {
    emit(ImageSelectedState(selectedImage: event.selectedImage));
  }

  void _onImageUploadInProgress(
    ImageUploadInProgressEvent event,
    Emitter<ImageUploadState> emit,
  ) {
    emit(const ImageUploadInProgressState());
  }

  void _onImageUploadSuccess(
    ImageUploadSuccessEvent event,
    Emitter<ImageUploadState> emit,
  ) {
    emit(const ImageUploadSuccessState());
  }

  void _onImageUploadFailure(
    ImageUploadFailureEvent event,
    Emitter<ImageUploadState> emit,
  ) {
    emit(ImageUploadFailureState(errorMessage: event.errorMessage));
  }

  void _onUpdateUploadProgress(
    UpdateUploadProgressEvent event,
    Emitter<ImageUploadState> emit,
  ) {
    emit(UpdateUploadProgressState(progress: event.progress));
  }

  void pickImage(File selectedImage) {
    add(ImageSelectedEvent(selectedImage: selectedImage));
  }

  Future<void> uploadImage(File selectedImage) async {
    try {
      add(const ImageUploadInProgressEvent());
      await _imageRepository.uploadImage(selectedImage, (progress) {
        add(UpdateUploadProgressEvent(progress: progress));
      });
      add(const ImageUploadSuccessEvent());
    } catch (e) {
      add(const ImageUploadFailureEvent(errorMessage: "Image upload failed"));
    }
  }

  Future<void> _handleChangeProfileImageFromCamera(
    ChangeProfileImageFromCameraEvent event,
    Emitter<ImageUploadState> emit,
  ) async {
    try {
      final getImageFromCamera = await ImageHelper.getImageFromCamera();
      final croppedCameraImageFile =
          await ImageHelper.cropImage(getImageFromCamera);
      event.onSuccess("Profile image changed successfully");
      emit(
        ImageUploadSuccess(
          message: "Profile image changed",
          imagePath: croppedCameraImageFile!.path,
        ),
      );
    } catch (e) {
      event.onFailure("Failed to change profile image");
      emit(const ImageUploadFailure(message: "Failed to change profile image"));
    }
  }

  @override
  ImageUploadState fromJson(Map<String, dynamic> json) {
    try {
      logger.d("fromJson: $json");
      return ImageUploadSuccess(
        message: json["message"] as String,
        imagePath: json["imagePath"] as String,
      );
    } catch (e) {
      logger.e(
        "Error parsing JSON in ImageUploaderBloc: $e",
      );
      return ImageUploadStateInitial();
    }
  }

  @override
  Map<String, dynamic> toJson(ImageUploadState state) {
    logger.d("toJson: $state");
    if (state is ImageUploadSuccess) {
      return {
        "message": state.message,
        "imagePath": state.imagePath,
      };
    }
    return {};
  }
}
