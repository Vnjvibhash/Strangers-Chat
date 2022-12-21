import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:strangerschat/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strangers Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0XFFFF0E0E),
        secondaryHeaderColor: Colors.redAccent,
        fontFamily: 'Georgia',
      ),
      home: const LoginScreen(),
      builder: EasyLoading.init(),
    );
  }
}
