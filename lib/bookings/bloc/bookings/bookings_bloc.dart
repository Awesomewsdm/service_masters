import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bookings_state.dart';
part 'bookings_event.dart';
part 'bookings_bloc.freezed.dart';

class BookingsBloc extends Bloc<BookingsEvent,BookingsState>{
  BookingsBloc() : super(const BookingsState.initial()){
    
  }
}