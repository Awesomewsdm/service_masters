import "package:service_masters/lodge_complaint/model/complaint/complaint.model.dart";

abstract class ComplaintRepository {
  Future<void> addComplaint(Complaint complaint);
  Future<void> updateComplaint(Complaint complaint);
  Future<void> deleteComplaint(int id);
}
