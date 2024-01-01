abstract class VerifyAccessEvent {}

class CodeChangedEvent extends VerifyAccessEvent {
  CodeChangedEvent(this.code);
  final String code;
}
