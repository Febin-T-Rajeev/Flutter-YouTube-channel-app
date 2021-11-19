import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:lottie/lottie.dart';
import 'package:s3l/assemble.dart';


void main() {
   WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
            backgroundColor: Color.fromRGBO(50, 75, 205, 1),
            splashIconSize: 400,
            duration: 5000,
            
     
            splash: LottieBuilder.asset('images/3532-car.json'),
            nextScreen: MyApp(),
            splashTransition: SplashTransition.slideTransition,
            
           
            )
            );
  }
}



