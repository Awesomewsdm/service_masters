import "package:service_masters/common/barrels.dart";

part "image_upload_bloc.freezed.dart";
part "image_upload_state.dart";
part "image_upload_event.dart";

class ImageUploadBloc extends Bloc<ImageUploadEvent, ImageUploadState> {
  ImageUploadBloc() : super(const ImageUploadState());
}
