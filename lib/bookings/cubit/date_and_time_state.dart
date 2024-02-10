import "package:service_masters/common/barrels.dart";

class DateTimeState extends Equatable {
  const DateTimeState({required this.selectedDate, required this.selectedTime});
  final DateTime selectedDate;
  final TimeOfDay selectedTime;

  @override
  List<Object?> get props => [selectedDate, selectedTime];

  DateTimeState copyWith({
    DateTime? selectedDate,
    TimeOfDay? selectedTime,
  }) {
    return DateTimeState(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
    );
  }
}

final DateTimeCubit dateTimeCubit = DateTimeCubit();
