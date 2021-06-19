import 'package:demoproject/screens/registration_screen.dart';
import 'package:demoproject/screens/dashboard_screen.dart';
import 'package:demoproject/screens/splash_screen.dart';
import 'package:demoproject/screens/login_screen.dart';
import 'package:demoproject/resources/styles.dart';
import 'package:flutter/material.dart';
import 'resources/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalThemeData,
      title: dashboardGreetings,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/registration': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
