import 'package:flutter/material.dart';
import 'package:home_service_app/src/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
      title: 'Flutter Demo',
      // theme: isDark ? ThemeData.dark() : ThemeData.light(),
      // home: BlocProvider(
      //   create: (context) => NavigationBloc(),
      //   child: BottomNav(),
      // ),
    );
  }
}
