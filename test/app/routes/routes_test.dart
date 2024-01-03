import "package:flutter_test/flutter_test.dart";
import "package:home_service_app/app/bloc/app_bloc.dart";
import "package:home_service_app/app/routes/routes.dart";
import "package:home_service_app/common/barrels.dart";

void main() {
  group("onGenerateAppViewPages", () {
    test("returns [HomePage] when authenticated", () {
      expect(
        onGenerateAppViewPages(AppStatus.authenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            "child",
            isA<HomeScreen>(),
          ),
        ],
      );
    });

    test("returns [LoginPage] when unauthenticated", () {
      expect(
        onGenerateAppViewPages(AppStatus.unauthenticated, []),
        [
          isA<MaterialPage<void>>().having(
            (p) => p.child,
            "child",
            isA<SignInScreen>(),
          ),
        ],
      );
    });
  });
}
