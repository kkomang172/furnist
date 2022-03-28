import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furnist/app_style.dart';
import 'package:furnist/page/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          iconTheme: IconThemeData(
            color: kPrimaryColor,
          )
        ),
        primaryColor: Color.fromRGBO(16, 16, 16, 1),
      ),
      home: OnboardingPage(),
    );
  }
}
