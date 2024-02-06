import 'package:flutter/material.dart';
import 'package:grocery/base/view/widgets/landing_page.dart';

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
        title: 'Namer App',
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