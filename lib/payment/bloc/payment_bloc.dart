import "package:service_masters/common/barrels.dart";

part "payment_event.dart";
part "payment_state.dart";

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  PaymentBloc() : super(const PaymentInitial()) {
    on<PaymentEvent>((event, emit) {});
  }
}
