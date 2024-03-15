import "package:service_masters/common/barrels.dart";

part "book_service.model.g.dart";
part "book_service.model.freezed.dart";

@freezed
class BookService with _$BookService {
  const factory BookService({
    required ServiceProvider serviceProvider,
    required Service service,
    required DateTime dateTime,
    required String description,
    required String address,
    required String id,
  }) = _BookService;

  factory BookService.fromJson(Map<String, dynamic> json) =>
      _$BookServiceFromJson(json);
}
