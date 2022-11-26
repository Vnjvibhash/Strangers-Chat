import 'package:flutter/material.dart';
import 'package:strangerschat/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strangers Chat',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primaryColor: Colors.red, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFFEF9EB)),
      // ),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.red,
        secondaryHeaderColor: Colors.redAccent,
        fontFamily: 'Georgia',
      ),
      home: const HomeScreen(),
    );
  }
}
