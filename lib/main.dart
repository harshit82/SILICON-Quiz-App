import 'package:flutter/material.dart';
import 'package:silicon_quiz/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SILICON Quiz',
      theme: ThemeData.dark().copyWith(backgroundColor: Colors.black),
      home: SplashScreenView(
        navigateRoute: const Home(),
        duration: 4000,
        imageSize: 300,
        imageSrc: "splash_screen.jpeg",
        text: "Silicon Quiz",
        textType: TextType.ScaleAnimatedText,
        textStyle: const TextStyle(
          fontSize: 30.0,
        ),
        backgroundColor: const Color(0xFF01212e),
      ),
    );
  }
}