import 'package:flutter/material.dart';
import 'package:grocery/base/landing_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Lista Zakupów",
        home: const LandingPage(),
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            canvasColor: Colors.blueGrey.shade900
        )
    );
  }
}