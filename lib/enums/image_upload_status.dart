enum ImageUploadStatus {
  initial(""),
  loading("Loading..."),
  success("Image uploaded successfully."),
  failure("Failed to upload image."),
  empty("No image found.");

  const ImageUploadStatus(this.message);
  final String message;
}
