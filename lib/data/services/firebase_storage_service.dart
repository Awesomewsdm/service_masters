import "dart:io";
import "package:service_masters/common/barrels.dart";

class FirebaseStorageService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<String> uploadFile(File file, String path) async {
    try {
      final storageRef = _storage.ref().child(path);
      final uploadTask = storageRef.putFile(file);
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
