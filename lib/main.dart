import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service_app/src/blocs/theme/theme_bloc.dart';
import 'package:home_service_app/src/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, bool>(builder: (context, isDark) {
        return MaterialApp.router(
          routeInformationProvider: AppRoutes.router.routeInformationProvider,
          routeInformationParser: AppRoutes.router.routeInformationParser,
          routerDelegate: AppRoutes.router.routerDelegate,
          title: 'Flutter Demo',
          theme: isDark ? ThemeData.dark() : ThemeData.light(),
          // home: BlocProvider(
          //   create: (context) => NavigationBloc(),
          //   child: BottomNav(),
          // ),
        );
      }),
    );
  }
}
