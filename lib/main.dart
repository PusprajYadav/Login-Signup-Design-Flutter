import 'package:flutter/material.dart';
import 'package:login_signup/loginpage.dart';
import 'package:login_signup/resetpage.dart';
import 'package:login_signup/signup.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "login",
      routes: {
        "login": (context) => const LoginPage(),
        "signup": (context) => const signPage(),
        "reset": (context) => const resetpage(),
      },
    ),
  );
}
