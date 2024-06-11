import 'themes/theme_style.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'di/dependency_injector.dart';
import 'router/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return DependencyInjector(
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: LightTheme.make,
        darkTheme: DarkTheme.make,
        // Initial Page set to Login Page 
        initialRoute: 'login',
        // Use the generator provided by Fluro package
        onGenerateRoute: router.generator,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('it'),
        ],
      )
    );
  }
}