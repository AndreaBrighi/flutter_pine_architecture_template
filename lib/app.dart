import 'package:app/locale/widgets/locale_selector.dart';

import 'themes/theme_style.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'languages/l10n/l10n.dart';
import 'di/dependency_injector.dart';
import 'router/routes.dart';
class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return DependencyInjector(
      child: LocaleSelector(builder: 
      (context, locale) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: LightTheme.make,
          darkTheme: DarkTheme.make,
          // Initial Page set to Login Page 
          initialRoute: 'login',
          // Use the generator provided by Fluro package
          onGenerateRoute: router.generator,
          supportedLocales: L10n.all,
            locale: locale,
            localizationsDelegates: [
              AppLocalizations.delegate,
              AppLocalizations.localizationsDelegates[1],
              AppLocalizations.localizationsDelegates[2],
              AppLocalizations.localizationsDelegates[3],
            ],
        );
      })
    );
  }
}