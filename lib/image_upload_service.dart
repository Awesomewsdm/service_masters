import "dart:io";
import "package:bank_app/data/bloc/bloc_observer/app_bloc_observer.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_storage/firebase_storage.dart";

class ImageService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> uploadImage(
    File selectedImage,
    void Function(double) onProgress,
  ) async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      throw Exception("User not authenticated");
    }

    final imageFileName =
        "profile_image_${DateTime.now().millisecondsSinceEpoch}";
    final reference =
        _storage.ref().child("profile_images/$userId/$imageFileName");
    final uploadTask = reference.putFile(selectedImage);

    uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
      final progress = snapshot.bytesTransferred / snapshot.totalBytes;
      onProgress(progress);
    });

    try {
      await uploadTask.whenComplete(() {
        logger.d("Image uploaded successfully!");
      });
    } catch (e) {
      logger.d("Image upload failed: $e");
      throw Exception("Image upload failed");
    }
  }

  Future<String> getImageUrl() async {
    final userId = _auth.currentUser?.uid;
    if (userId == null) {
      throw Exception("User not authenticated");
    }

    final imageFileName =
        "profile_image_${DateTime.now().millisecondsSinceEpoch}";
    final reference =
        _storage.ref().child("profile_images/$userId/$imageFileName");
    final imageUrl = await reference.getDownloadURL();
    return imageUrl;
  }
}
