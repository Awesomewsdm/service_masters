import "package:home_service_app/common/barrels.dart";

class VerifyAccessState extends Equatable {
  const VerifyAccessState({
    required this.isCodeValid,
    this.errorText,
  });

  final bool isCodeValid;
  final String? errorText;

  @override
  List<Object?> get props => [isCodeValid, errorText];
}
