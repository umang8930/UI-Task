import 'package:designtask/const/app_color.dart';
import 'package:designtask/const/app_strings.dart';
import 'package:designtask/views/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppString().titleText,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: AppColors().primaryColor),
        scaffoldBackgroundColor: AppColors().primaryColor,
      ),
      // color: AppColors().primaryColor,
      debugShowCheckedModeBanner: false,
      home: const SignUpScreen(),
    );
  }
}
