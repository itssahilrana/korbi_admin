import 'package:flutter/material.dart';
import 'package:korbi_admin/constants.dart';
import 'package:korbi_admin/responsive_class.dart';
import 'package:korbi_admin/screens/splash_screen/splash_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Korbi",
      theme: Responsive.isDesktop(context)? ThemeData(
        scaffoldBackgroundColor: const Color(0xfff6f6f6),
        splashColor: const Color(0xffe7e7e7),
      )
          : ThemeData(
        scaffoldBackgroundColor: const Color(0xffe7e7e7),
        splashColor: const Color(0xffe7e7e7),
        appBarTheme: const AppBarTheme(
          backgroundColor: black3,
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
