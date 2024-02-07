import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:grocery/framework/widgets/landing_page.dart';
import 'package:grocery/framework/widgets/product_create_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*@override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Lista Zakupów",
        home: LandingPage(),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: '/',
/*        routes: {
          '/': (context) {

          }
        },*/

        title: 'Grocery App',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
        theme: _getTheme(),
        home: const LandingPage(),
      );
  }

  ThemeData _getTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey, brightness: Brightness.dark),
    );
  }
}