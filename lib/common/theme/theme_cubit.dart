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
  ThemeData fromJson(Map<String, dynamic> json) {
    return ThemeData();
  }

  @override
  Map<String, dynamic> toJson(ThemeData state) {
    return <String, String>{"color": "$state"};
  }
}
