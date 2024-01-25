//  Create a repo to handle all sending cutomer complaint to firebase firestore

import "package:cloud_firestore/cloud_firestore.dart";
import "package:service_masters/data/models/complaint/complaint.dart";

abstract class ComplaintRepository {
  Future<void> addComplaint(Complaint complaint);
  Future<void> updateComplaint(Complaint complaint);
  Future<void> deleteComplaint(int id);
}
