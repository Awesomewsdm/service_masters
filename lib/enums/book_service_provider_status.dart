enum BookServiceProviderStatus {
  initial(message: ""),
  bookingInProgress(message: "Booking In Progress"),
  bookingSuccess(message: "Service Provider Successfully Booked"),
  bookingFailure(message: "Failed To Book Provider");

  const BookServiceProviderStatus({required this.message});
  final String message;
}
