import "package:bloc/bloc.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part "personal_details_event.dart";
part "personal_details_state.dart";
part "personal_details_bloc.freezed.dart";

class PersonalDetailsBloc
    extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {
  PersonalDetailsBloc() : super(const _Initial()) {
    on<PersonalDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
