import 'package:campus_complaint/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffbadfdb),
          toolbarHeight: 80,
          titleTextStyle: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            letterSpacing: 1.5,
          ),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(18),
          ),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 119, 119),
        fontFamily: 'Roboto',
        primaryColor: Color(0xfffff2eb),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 11, horizontal: 20),
            textStyle: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(10),
              side: BorderSide(
                width: 3,
                color: Colors.white
              ),
            ),
          ),
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffbadfdb),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black
        ),
        cardTheme: CardThemeData(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(14)
          ),
          elevation: 5
        )
      ),
      home: LandingPage(),
    );
  }
}
