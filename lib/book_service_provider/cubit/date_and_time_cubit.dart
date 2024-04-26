import "package:service_masters/book_service_provider/cubit/date_and_time_state.dart";
import "package:service_masters/common/barrels.dart";

class DateTimeCubit extends Cubit<DateTimeState> {
  DateTimeCubit()
      : super(
          DateTimeState(
            selectedDate: DateTime.now(),
            selectedTime: TimeOfDay.now(),
          ),
        );

  void setDate(DateTime date) {
    emit(state.copyWith(selectedDate: date));
  }

  void setTime(TimeOfDay time) {
    emit(state.copyWith(selectedTime: time));
  }
}

Future<void> selectDate(BuildContext context) async {
  final picked = await showDatePicker(
    context: context,
    initialDate: dateTimeCubit.state.selectedDate,
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
  );
  if (picked != null && picked != dateTimeCubit.state.selectedDate) {
    dateTimeCubit.setDate(picked);
  }
}

Future<void> selectTime(BuildContext context) async {
  final picked = await showTimePicker(
    context: context,
    initialTime: dateTimeCubit.state.selectedTime,
  );
  if (picked != null && picked != dateTimeCubit.state.selectedTime) {
    dateTimeCubit.setTime(picked);
  }
}
