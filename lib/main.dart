// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:instagram/screens/activity-screen.dart';
import 'package:instagram/screens/explore-screen.dart';
import 'package:instagram/screens/home-screen.dart';
import 'package:instagram/screens/main-screen.dart';
import 'package:instagram/screens/profile-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontFamily: 'GB',
                fontSize: 18,
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(
              Color.fromRGBO(243, 83, 131, 1),
            ),
          ),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'GB',
          ),
          bodySmall: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontFamily: 'GB',
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'GM',
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          repeat: ImageRepeat.repeat,
          image: AssetImage('images/pattern1.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 200,
                child: Image(
                  image: AssetImage('images/logo_splash.png'),
                ),
              ),
            ),
            Positioned(
              bottom: 35,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  Text(
                    'Alireza Ghaznavi',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 43, 96, 123),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
