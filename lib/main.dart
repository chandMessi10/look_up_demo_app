import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/sqflite_service.dart';
import 'package:look_up_demo_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:look_up_demo_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SqfliteService().initializeDB();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF1D67DD),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1D67DD)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
