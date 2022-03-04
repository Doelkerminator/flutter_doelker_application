import 'package:flutter/material.dart';
import 'package:flutter_application/routes/routes.dart';
import 'package:flutter_application/screens/login.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: getApplicationRoutes(),
        theme: ThemeData(fontFamily: 'Candara'),
        home: SplashScreenView(
          navigateRoute: Login(),
          duration: 5000,
          imageSize: 150,
          imageSrc: "images/slime.png",
          text: "AniPhoria",
          textType: TextType.ColorizeAnimationText,
          textStyle: const TextStyle(
            fontSize: 80.0,
            fontFamily: "Aestethicc",
          ),
          colors: const [
            Color(0xFFFF1166),
            Colors.white,
            Color(0xFFFF1166),
          ],
          backgroundColor: const Color(0xFF1F1F1F),
        ));
  }
}
