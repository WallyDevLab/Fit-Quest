import 'package:fit_quest/splash.dart';
import 'package:flutter/material.dart';
import 'package:fit_quest/ui/onboarding/splash_screen.dart';
import 'package:fit_quest/ui/dashboard/home_page.dart';
import 'package:fit_quest/ui/signing_in/sign_in.dart';
import 'package:fit_quest/ui/registering/sign_up.dart';

void main() {
  runApp(const FitQuestApp());
}

class FitQuestApp extends StatelessWidget {
  const FitQuestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      routes: {
        '/': (context) => SplashScreen(),
        '/login-screen': (context) => const LogIn(),
        '/sign_up': (context) => const SignUp(),
        // '/home_page': (context) => const HomePage(),
      },
      // Handle unknown routes
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
      },
    );
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: const Center(
        child: Text(
          'Oops! The page you are looking for doesn\'t exist.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
