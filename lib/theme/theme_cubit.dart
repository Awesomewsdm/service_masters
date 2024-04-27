import "package:service_masters/common/barrels.dart";

class ThemeCubit extends HydratedCubit<ThemeData> {
  ThemeCubit() : super(AppThemeData.lightThemeData);

  FutureOr<void> toggleTheme() {
    if (state.brightness == AppThemeData.lightThemeData.brightness) {
      emit(AppThemeData.darkThemeData);
    } else {
      emit(AppThemeData.lightThemeData);
    }
  }

  @override
  ThemeData? fromJson(Map<String, dynamic> json) {
    final brightness =
        json["brightness"] == "light" ? Brightness.light : Brightness.dark;
    return ThemeData(brightness: brightness);
  }

  @override
  Map<String, dynamic>? toJson(ThemeData state) {
    final brightnessStr =
        state.brightness == Brightness.light ? "light" : "dark";
    return {"brightness": brightnessStr};
  }
}
