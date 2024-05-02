enum ImageUploadStatus {
  initial(""),
  loading("Loading..."),
  success("Image uploaded successfully."),
  failure("Failed to upload image.");

  const ImageUploadStatus(this.message);
  final String message;
}
