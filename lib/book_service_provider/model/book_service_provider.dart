import "package:service_masters/common/barrels.dart";

part "book_service_provider.g.dart";

@JsonSerializable()
class BookServiceProvider {
  BookServiceProvider({
    required this.id,
    required this.customerId,
    required this.serviceProviderId,
    required this.serviceId,
    required this.bookingDate,
    required this.bookingTime,
    required this.status,
    required this.description,
    this.mediaFilesUrl,
  });

  factory BookServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$BookServiceProviderFromJson(json);

  final String id;
  final String customerId;
  final String serviceProviderId;
  final String serviceId;
  final DateTime bookingDate;
  final String bookingTime;
  final String status;
  final String description;
  final List<String>? mediaFilesUrl;

  String get statusText {
    switch (status) {
      case "0":
        return "Pending";
      case "1":
        return "Accepted";
      case "2":
        return "Rejected";
      case "3":
        return "Completed";
      default:
        return "Pending";
    }
  }

  Map<String, dynamic> toJson() => _$BookServiceProviderToJson(this);
}
