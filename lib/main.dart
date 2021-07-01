import 'package:flutter/material.dart';
import 'package:flutter_first_app/screens/login_page.dart';
import 'package:flutter_first_app/utilities/myRoutes.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/home_page.dart';

void main() {
  runApp(MyApp());fdsd
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
