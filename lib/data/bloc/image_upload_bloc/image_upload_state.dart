part of "image_upload_bloc.dart";

@sealed
abstract class ImageUploadState extends Equatable {
  const ImageUploadState();
  @override
  List<Object> get props => [];
}

class ImageUploadStateInitial extends ImageUploadState {}

class ImageUploadSuccess extends ImageUploadState {
  const ImageUploadSuccess({
    required this.message,
    required this.imagePath,
  });
  final String message;
  final String imagePath;

  @override
  List<Object> get props => [message];
}

class ImageUploadFailure extends ImageUploadState {
  const ImageUploadFailure({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

class ImageUploadInitial extends ImageUploadState {
  const ImageUploadInitial();
}

class ImageSelectedState extends ImageUploadState {
  const ImageSelectedState({required this.selectedImage});
  final File selectedImage;

  @override
  List<Object> get props => [selectedImage];
}

class ImageUploadInProgressState extends ImageUploadState {
  const ImageUploadInProgressState();

  @override
  List<Object> get props => [];
}

class ImageUploadSuccessState extends ImageUploadState {
  const ImageUploadSuccessState();

  @override
  List<Object> get props => [];
}

class ImageUploadFailureState extends ImageUploadState {
  const ImageUploadFailureState({required this.errorMessage});
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}

class UpdateUploadProgressState extends ImageUploadState {
  const UpdateUploadProgressState({required this.progress});
  final double progress;

  @override
  List<Object> get props => [progress];
}
