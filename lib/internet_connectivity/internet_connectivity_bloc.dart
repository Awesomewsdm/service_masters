import "package:service_masters/common/barrels.dart";

part "internet_connectivity_bloc.freezed.dart";
part "internet_connectivity_event.dart";
part "internet_connectivity_state.dart";

class InternetConnectivityBloc
    extends Bloc<InternetConnectivityEvent, InternetConnectivityState> {
  InternetConnectivityBloc({
    required this.connectivity,
  }) : super(const _Initial()) {
    on<_InternetConnected>(_onInternetConnected, transformer: restartable());
    on<_InternetDisconnected>(
      _onInternetDisconnected,
      transformer: restartable(),
    );
  }
  final Connectivity connectivity;

  Future<void> _onInternetConnected(
    _InternetConnected event,
    Emitter<InternetConnectivityState> emit,
  ) async {
    try {
      await emit.forEach(
        connectivity.onConnectivityChanged,
        onData: (data) {
          logger.i(data);
          if (data == ConnectivityResult.mobile ||
              data == ConnectivityResult.wifi) {
            return _Connected(connectivityResult: data);
          }
          return const _DisConnected();
        },
      );
    } catch (e) {
      logger.e(e);
      add(const _InternetDisconnected());
    }
  }

  Future<void> _onInternetDisconnected(
    _InternetDisconnected event,
    Emitter<InternetConnectivityState> emit,
  ) async {
    try {
      return emit(const _DisConnected());
    } catch (e) {
      emit(const _DisConnected());
    }
  }
}
