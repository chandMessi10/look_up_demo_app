import 'package:go_router/go_router.dart';
import 'package:look_up_demo_app/features/auth/presentation/screens/login/login_screen.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/home_screen.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/pre_loader_home_screen.dart';
import 'package:look_up_demo_app/features/splash/presentation/screens/splash_screen.dart';

enum AppRoute {
  splash,
  login,
  home,
  preLoaderHome,
}

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      name: AppRoute.splash.name,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      name: AppRoute.login.name,
      builder: (context, state) => LogInScreen(),
    ),
    GoRoute(
      path: '/preLoaderHome',
      name: AppRoute.preLoaderHome.name,
      builder: (context, state) => const PreLoaderHomeScreen(),
    ),
    GoRoute(
      path: '/home',
      name: AppRoute.home.name,
      builder: (context, state) => const HomeScreen(),
    ),
  ],
  debugLogDiagnostics: true,
);
