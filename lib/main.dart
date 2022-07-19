import 'package:dna/modules/home/home_page.dart';
import 'package:dna/routes.dart';
import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
    centerTitle: false,
  ),
  primaryColor: Colors.black,
  canvasColor: const Color(0xffff9eeb),
  inputDecorationTheme: InputDecorationTheme(
    border: const OutlineInputBorder(borderSide: BorderSide.none),
    enabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    fillColor: Colors.white.withOpacity(0.8),
    filled: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    hintStyle: const TextStyle(color: Colors.black),
    isCollapsed: true,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      minimumSize: Size(150, 36),
      textStyle: TextStyle(fontSize: 16),
    ),
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: Routes.auth,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
