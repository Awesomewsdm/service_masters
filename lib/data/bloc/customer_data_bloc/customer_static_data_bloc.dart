import "package:bank_app/common/constants/exports.dart";
import "package:bank_app/data/bloc/customer_data_bloc/customer_data_event.dart";
import "package:bank_app/data/models/user/user_db.dart";

class CustomerDataBloc extends Bloc<CustomerDataEvent, CustomerDataState> {
  CustomerDataBloc({required CustomerDbRepository customerDbRepository})
      : _customerDbRepository = customerDbRepository,
        super(CustomerDataInitial()) {
    on<LoadCustomerDataEvent>(_onLoadCustomerData);
    on<StoreUserInfoEvent>(_onStoreUserInfo);
  }

  final CustomerDbRepository _customerDbRepository;

  Future<void> _onLoadCustomerData(
    LoadCustomerDataEvent event,
    Emitter<CustomerDataState> emit,
  ) async {
    try {
      await Future<void>.delayed(const Duration(seconds: 3500));
      final userDB = await _customerDbRepository.loadCustomerData();
      if (userDB != null) {
        emit(
          CustomerDataLoaded(userDB),
        );
      } else {
        emit(
          CustomerDataError("No customer data available"),
        );
      }
    } catch (e) {
      emit(
        CustomerDataError("Failed to load data: $e"),
      );
    }
  }

  Future<void> _onStoreUserInfo(
    StoreUserInfoEvent event,
    Emitter<CustomerDataState> emit,
  ) async {
    await _customerDbRepository.saveCustomerData(
      UserDB(firstName: event.firstName, lastName: event.otherNames),
    );
    try {
      emit(
        CustomerDataLoaded(
          UserDB(firstName: event.firstName, lastName: event.otherNames),
        ),
      );
    } catch (e) {
      emit(
        CustomerDataError("Failed to store user information: $e"),
      );
    }
  }
}
