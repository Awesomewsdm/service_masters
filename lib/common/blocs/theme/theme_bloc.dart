import "package:service_masters/common/barrels.dart";

enum ThemeEvent { toggle }

class ThemeBloc extends Bloc<ThemeEvent, bool> {
  ThemeBloc() : super(false);

  @override
  Stream<bool> mapEventToState(ThemeEvent event) async* {
    if (event == ThemeEvent.toggle) {
      yield !state;
    }
  }
}
