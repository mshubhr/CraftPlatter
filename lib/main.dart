import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:craft_my_plate/Activities/navigation.dart';
import 'package:craft_my_plate/Activities/walkthrough.dart';
import 'package:craft_my_plate/Activities/splash.dart';
import 'package:craft_my_plate/Activities/login_onboarding.dart';
import 'package:craft_my_plate/Activities/otp_onboarding.dart';
import 'package:craft_my_plate/Activities/data_onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const Splash(),
        '/login': (context) => const LogIn(),
        '/otp': (context) => const Otp(
              phone: 'codeMobile! + phoneNumber.text',
            ),
        '/details': (context) => const Details(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/walkthrough') {
          return MaterialPageRoute(
            builder: (context) => const Walkthrough(),
          );
        }
        if (settings.name == '/navigation') {
          return MaterialPageRoute(
            builder: (context) => const Navigation(),
          );
        }
        // Handle other routes here if needed
        return null;
      },
      onUnknownRoute: (settings) {
        // Handle unknown routes here, such as displaying a 404 page
        return null;
      },
    );
  }
}
