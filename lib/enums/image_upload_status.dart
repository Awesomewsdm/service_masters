enum ImagePickerStatus {
  initial(""),
  loading("Loading..."),
  success("Image uploaded successfully."),
  failure("Failed to upload image.");

  const ImagePickerStatus(this.message);
  final String message;
}
