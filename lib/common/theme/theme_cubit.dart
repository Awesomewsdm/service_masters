import "package:service_masters/common/barrels.dart";

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit() : super(AppThemeData.lightThemeData);

  void toggleTheme() {
    if (state.brightness == AppThemeData.lightThemeData.brightness) {
      emit(AppThemeData.darkThemeData);
    } else {
      emit(AppThemeData.lightThemeData);
    }
  }
}
