import "package:cloud_firestore/cloud_firestore.dart";
import "package:service_masters/lodge_complaint/data_source/lodge_complaint_data_source.dart";
import "package:service_masters/lodge_complaint/model/complaint/complaint.model.dart";

class ComplaintRepository implements LodgeComplaintDataSource {
  ComplaintRepository(this._firestore);
  final FirebaseFirestore _firestore;

  @override
  Future<void> addComplaint(Complaint complaint) async {
    try {
      await _firestore.collection("complaints").add(complaint.toJson());
    } catch (e) {
      //
    }
  }

  @override
  Future<void> updateComplaint(Complaint complaint) async {
    try {
      await _firestore
          .collection("complaints")
          .doc("complaint")
          .update(complaint.toJson());
    } catch (e) {}
  }

  @override
  Future<void> deleteComplaint(int id) async {
    try {
      await _firestore.collection("complaints").doc(id.toString()).delete();
    } catch (e) {}
  }
}
