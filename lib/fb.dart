// enum JobDescription {
//   frontdesk((valueWithoutSpaces: "frontdesk", value: "Front Desk")),
//   technician(
//     (valueWithoutSpaces: "technician", value: "Technician"),
//   ),
//   supervisor(
//     (valueWithoutSpaces: "supervisor", value: "Supervisor"),
//   ),
//   manager(
//     (valueWithoutSpaces: "manager", value: "Manager"),
//   ),
//   superadmin(
//     (valueWithoutSpaces: "superadmin", value: "Super Admin"),
//   ),
//   unknown((valueWithoutSpaces: "", value: ""));
//   const JobDescription(this.jobDescriptionRecord);
//   final JobDescriptionRecord jobDescriptionRecord;
// }

// extension JobDescriptionExtension on JobDescription {
//   bool get isFrontDesk => this == JobDescription.frontdesk;
//   bool get isTechnician => this == JobDescription.technician;
//   bool get isSupervisor => this == JobDescription.supervisor;
//   bool get isManager => this == JobDescription.manager;
//   bool get isSuperAdmin => this == JobDescription.superadmin;
//   bool get isUnknown => this == JobDescription.unknown;
// }
// typedef JobDescriptionRecord = ({String value, String valueWithoutSpaces});
// As show the 'this' keyword referred to the instantiation of the record defined ouside the class so it can be parsed as a parameter to the enum.
// With the same example, if we what to use the value in out model, we can write the code like this:
// @freezed
// class ComplaintApproverModel with _$ComplaintApproverModel {
//   const factory ComplaintApproverModel({
//     @OtherNamesConverter() required OtherNames otherNames,
//     @SurnameConverter() required Surname surname,
//     @DepartmentConverter() required Department department,
//     @JsonKey(name: "profile_picture") required String profilePicture,
    // @JobDescriptionConverter() required JobDescription jobDescription,
//     @InstructionsToComplaintApproverConverter()
//     String? instructionsToComplaintApprover,
//   }) = _ComplaintApproverModel;
//   factory ComplaintApproverModel.fromJson(Map<String, dynamic> json) =>
//       _$ComplaintApproverModelFromJson(json);
// }
// Now in using the enum values from the model, we can simply access the value in the view like this:
// class ApproverRadioListTile extends StatelessWidget {
//   const ApproverRadioListTile({
//     required this.approver,
//     required this.selectedGroupValue,
//     required this.onChanged,
//   });
//   final ComplaintApproverModel approver;
//   final ComplaintApproverModel? selectedGroupValue;
//   final ValueChanged<ComplaintApproverModel?> onChanged;
//   @override
//   Widget build(BuildContext context) {
//     return RadioListTile(
//       activeColor: const Color(0xff006495),
//       title: Text(
//         "${approver.otherNames.value} ${approver.surname.value}",
//         style: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
// And how when we write our repository logic, we can simply push the model to json and it will use the name of the enum as the value to be stored in firestore:
// await Firestore.instance
//             .collection("incidents")
//             .document(
//               splitReferenceNumber(
//                 updatedIncidentWithApprover
//                     .sharedIncidentDataModel.referenceNumber,
//               ),
//             )
//             .update(updatedIncidentWithApprover.toJson());
// In firebase we will have our collection data looking like this:
// complaintApproverModel
//       departmenent: "technicalServices"
//       jobDescription: "supervisor"
//       othernames: "One"
//       profile_picture: "https://firebasestorage.googleapis.com/v0/b/vra-client-service-app.appspot.com/o/admins%2Fu7cxj9W23uQJy3pYAZFmMEO1Tmh2%2Fprofile_picture%2FScreenshot%202023-10-17%20at%2020.04.25.png?alt=media&token=b16304e-ab88-4dcf-a89c-82f4561d4bf9"
//       surname: "Supervisor"
// As seen the name of the enum was stored and so when we access the model back, we can use the name of the enum to get the version of enum value by doing approver.surname.valueWithSpaces for example (edited) 
// :+1:
// 1

// 1 reply


// benedict adu
//   2 months ago
// Note that you will require a converter after you set up your enums and with a record.
// The record for the example shown looks like this:
// import "package:dcsa/complaints/enums/job_description/job_description.dart";
// import "package:json_annotation/json_annotation.dart";
// class JobDescriptionConverter implements JsonConverter<JobDescription, String> {
//   const JobDescriptionConverter();
//   @override
//   JobDescription fromJson(String json) {
//     return JobDescription.values.firstWhere(
//       (element) => element.jobDescriptionRecord.valueWithoutSpaces == json,
//     );
//   }
//   @override
//   String toJson(JobDescription object) {
//     return object.jobDescriptionRecord.valueWithoutSpaces;
//   }
// }
