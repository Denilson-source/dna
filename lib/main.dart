import 'package:dna/modules/home/home_page.dart';
import 'package:dna/routes.dart';
import 'package:flutter/material.dart';

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
      theme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          centerTitle: false,
        ),
        primaryColor: Colors.black,
        canvasColor: const Color(0xffff9eeb),
      ),
      initialRoute: Routes.home,
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}
