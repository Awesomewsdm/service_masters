import "package:flutter_bloc/flutter_bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "notifications_state.dart";
part "notifications_event.dart";
part "notifications_bloc.freezed.dart";

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(const NotificationsState.initial());
}
