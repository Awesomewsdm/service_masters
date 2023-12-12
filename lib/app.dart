import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_service_app/src/app/app_routes.dart';
import 'package:home_service_app/src/blocs/theme/theme_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        );
      }),
    );
  }
}
