import 'package:azkar_app/screens/home_screen.dart';
import 'package:azkar_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/Splash_screen',

      routes: {
        '/Splash_screen': (context)=> SplashScreen(),
        '/homescreen': (context)=> HomeScreen(),
      },


    );
  }
}

