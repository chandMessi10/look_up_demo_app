import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/config/app_config.dart';
import 'package:look_up_demo_app/core/utils/sqflite_service.dart';
import 'package:look_up_demo_app/features/auth/presentation/screens/login/login_screen.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/home_screen.dart';
import 'package:look_up_demo_app/firebase_options.dart';

import 'core/services/locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupLocator();
  SqfliteService().initializeDB();
  final userLoggedIn = AppConfig().isLoggedIn();
  runApp(
    MyApp(
      initialScreen: LogInScreen(),
      // await userLoggedIn ? const HomeScreen() : const LogInScreen(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    required this.initialScreen,
    super.key,
  });

  final Widget initialScreen;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: const Color(0xFF1D67DD),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1D67DD)),
        useMaterial3: true,
        bottomSheetTheme: const BottomSheetThemeData(
          backgroundColor: Color(0xFF1D67DD),
          dragHandleColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: initialScreen,
    );
  }
}
