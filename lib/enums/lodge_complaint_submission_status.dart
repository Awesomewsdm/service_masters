enum LodgeComplaintSubmissionStatus {
  initial(""),
  loading("Loading..."),
  success("Complaint submitted successfully."),
  failure("Sorry, failed to submit complaint.");

  const LodgeComplaintSubmissionStatus(this.message);
  final String message;
}
