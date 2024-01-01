part of "image_upload_bloc.dart";

abstract class ImageUploadEvent extends Equatable {
  const ImageUploadEvent();

  @override
  List<Object> get props => [];
}

class ChangeProfileImageFromGalleryEvent extends ImageUploadEvent {
  const ChangeProfileImageFromGalleryEvent({
    required this.source,
    required this.onSuccess,
    required this.onFailure,
  });
  final ImageSource source;
  final void Function(String) onSuccess;
  final void Function(String) onFailure;

  @override
  List<Object> get props => [
        source,
        onSuccess,
        onFailure,
      ];
}

class ChangeProfileImageFromCameraEvent extends ImageUploadEvent {
  const ChangeProfileImageFromCameraEvent({
    required this.source,
    required this.onSuccess,
    required this.onFailure,
  });
  final ImageSource source;

  final void Function(String) onSuccess;
  final void Function(String) onFailure;

  @override
  List<Object> get props => [source, onSuccess, onFailure];
}

class ImageSelectedEvent extends ImageUploadEvent {
  const ImageSelectedEvent({required this.selectedImage});
  final File selectedImage;

  @override
  List<Object> get props => [selectedImage];
}

class ImageUploadInProgressEvent extends ImageUploadEvent {
  const ImageUploadInProgressEvent();

  @override
  List<Object> get props => [];
}

class ImageUploadSuccessEvent extends ImageUploadEvent {
  const ImageUploadSuccessEvent();

  @override
  List<Object> get props => [];
}

class ImageUploadFailureEvent extends ImageUploadEvent {
  const ImageUploadFailureEvent({required this.errorMessage});
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}

class UpdateUploadProgressEvent extends ImageUploadEvent {
  const UpdateUploadProgressEvent({required this.progress});
  final double progress;

  @override
  List<Object> get props => [progress];
}
