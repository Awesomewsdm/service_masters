import "dart:io";
import "package:service_masters/common/barrels.dart";

class FirebaseStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadFile({
    required File file,
    required String path,
    required void Function(double) onProgress,
  }) async {
    try {
      final storageRef = _storage.ref().child(path);
      final uploadTask = storageRef.putFile(file);
      uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
        final progress = snapshot.bytesTransferred / snapshot.totalBytes;
        onProgress(progress);
      });
      final snapshot = await uploadTask;
      final downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl;
    } catch (e) {
      logger.d("Error uploading file: $e");
      throw Exception("Error uploading file");
    }
  }

  Future<void> deleteFile(String path) async {
    try {
      final storageRef = _storage.ref().child(path);
      await storageRef.delete();
    } catch (e) {
      logger.d("Error deleting file: $e");
      throw Exception("Error deleting file");
    }
  }
}
