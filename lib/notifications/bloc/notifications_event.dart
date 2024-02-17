part of "notifications_bloc.dart";

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.fetchNotifications() = _FetchNotifications;
  const factory NotificationsEvent.refresh() = _RefreshNotifications;
}
