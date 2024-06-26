import "package:intl/intl.dart";
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

  Future<void> selectDate(
    BuildContext context,
    TextEditingController dateController,
  ) async {
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: dateTimeCubit.state.selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    final selectedDate = dateController.text;
    if (selectedDate.isEmpty) {
      logger.d(
        "Time is empty. Please select a time before selecting a date.",
      );

      if (pickedDate != null &&
          pickedDate != dateTimeCubit.state.selectedDate) {
        dateTimeCubit.setDate(pickedDate);
        dateController.text = DateFormat.yMd().format(pickedDate);
      }
    }
  }

  Future<void> selectTime(
    BuildContext context,
    TextEditingController timeController,
  ) async {
    final picked = await showTimePicker(
      context: context,
      initialTime: dateTimeCubit.state.selectedTime,
    );
    if (picked != null && picked != dateTimeCubit.state.selectedTime) {
      dateTimeCubit.setTime(picked);
      if (context.mounted) {
        timeController.text = picked.format(context);
      }
    }
  }
}
