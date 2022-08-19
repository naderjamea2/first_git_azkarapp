import 'dart:ui';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
       Navigator.pushNamed(context, '/homescreen');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
            child: Image.network(
              'https://media.istockphoto.com/vectors/abstract-blue-and-orange-vector-background-vector-id1133320303?k=20&m=1133320303&s=170667a&w=0&h=tcvx4FFQc01MHIKxH9__1-GfRa468X2yTNaf19earbc=',
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          Center(
            child: Text(
              'Azkar App',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            child: Text(
              'My App 2021',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500,color: Colors.blue,fontSize: 18),
            ),
            left: 0,
            right: 0,
            bottom: 10,
          ),
        ],
      ),
    );
  }
}
