import "package:cloud_firestore/cloud_firestore.dart";
import "package:service_masters/lodge_complaint/model/complaint/complaint.model.dart";
import "package:service_masters/lodge_complaint/repository/lodge_complaint_repository.dart";

class ComplaintRepositoryImpl implements ComplaintRepository {
  ComplaintRepositoryImpl(this._firestore);
  final FirebaseFirestore _firestore;

  @override
  Future<void> addComplaint(Complaint complaint) async {
    try {
      await _firestore.collection("complaints").add(complaint.toJson());
    } catch (e) {
      // Handle error
    }
  }

  @override
  Future<void> updateComplaint(Complaint complaint) async {
    try {
      await _firestore
          .collection("complaints")
          .doc("complaint")
          .update(complaint.toJson());
    } catch (e) {
      // Handle error
    }
  }

  @override
  Future<void> deleteComplaint(int id) async {
    try {
      await _firestore.collection("complaints").doc(id.toString()).delete();
    } catch (e) {
      // Handle error
    }
  }
}
