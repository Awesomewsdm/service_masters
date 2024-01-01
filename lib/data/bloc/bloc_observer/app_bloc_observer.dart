import "package:bank_app/common/constants/exports.dart";

final logger = Logger(printer: PrettyPrinter(methodCount: 0));

class BankAppObserver extends BlocObserver {
  const BankAppObserver();
  @override
  void onError(BlocBase<void> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e("Bloc: ${bloc.runtimeType}", error: error, stackTrace: stackTrace);
  }

  @override
  void onCreate(BlocBase<void> bloc) {
    super.onCreate(bloc);
    logger.t("${bloc.runtimeType} created");
  }

  @override
  void onClose(BlocBase<void> bloc) {
    super.onClose(bloc);
    logger.t("${bloc.runtimeType} disposed");
  }
}
