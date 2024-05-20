import "package:service_masters/common/barrels.dart";

part "book_service_provider.g.dart";
part "book_service_provider.freezed.dart";

@freezed
class BookServiceProvider with _$BookServiceProvider {
  const factory BookServiceProvider({
    required String id,
    required String customerId,
    required String serviceProviderId,
    required String serviceId,
    required DateTime bookingDate,
    required String bookingTime,
    required String address,
    required String status,
    required String description,
    List<String>? mediaFilesUrl,
  }) = _BookServiceProvider;

  factory BookServiceProvider.fromJson(Map<String, dynamic> json) =>
      _$BookServiceProviderFromJson(json);
}
