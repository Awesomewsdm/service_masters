import "dart:io";
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

class FileListConverter implements JsonConverter<List<File>?, String?> {
  const FileListConverter();

  @override
  List<File>? fromJson(String? json) {
    if (json == null) {
      return null;
    }

    return json.split(",").map(File.new).toList();
  }

  @override
  String? toJson(List<File>? files) {
    if (files == null) {
      return null;
    }

    return files.map((file) => file.path).join(",");
  }
}
