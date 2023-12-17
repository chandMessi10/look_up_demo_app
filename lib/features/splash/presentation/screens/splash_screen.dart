import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';
import 'package:look_up_demo_app/features/auth/presentation/screens/login/login_screen.dart';
import 'package:look_up_demo_app/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:look_up_demo_app/features/splash/presentation/widgets/splash_background_custom_path.dart';
import 'package:look_up_demo_app/features/splash/presentation/widgets/splash_login_button_custom_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late SplashBloc _bloc;
  double _backgroundAnimationControllerValue = 0.0;
  bool _showLoginButton = false;

  @override
  void initState() {
    super.initState();
    _bloc = SplashBloc(
      AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
      ),
      AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 800),
      ),
      AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      ),
      AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 1000),
      ),
    );
    _bloc.add(const SplashEvent.startAnimation());
    _bloc.backgroundAnimationController.addListener(() {
      setState(() {
        _backgroundAnimationControllerValue =
            _bloc.backgroundAnimationController.value;
      });
    });
    _bloc.loginButtonAnimationController.addListener(() {
      if (_bloc.loginButtonAnimationController.isCompleted) {
        setState(() {
          _showLoginButton = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<SplashBloc, SplashState>(
        bloc: _bloc,
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: size.height,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AnimatedBuilder(
                  animation: _bloc.backgroundAnimationController,
                  builder: (context, _) {
                    return ClipPath(
                      clipper: BackgroundCustomPath(
                        value: _bloc.backgroundAnimationController.value,
                      ),
                      child: Container(
                        height: size.height,
                        width: double.infinity,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
              AnimatedBuilder(
                animation: _bloc.logoAnimationController,
                builder: (context, child) {
                  return ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: "LOOKUP".length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return FadeTransition(
                        opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                          CurvedAnimation(
                            parent: _bloc.logoAnimationController,
                            curve: Interval(
                              index / "LOOKUP".length,
                              (index + 1) / "LOOKUP".length,
                              curve: Curves.easeInOut,
                            ),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'assets/logo_letter/letter_${"LOOKUP"[index].toUpperCase()}.svg',
                          width: 60,
                          height: 60,
                          colorFilter: ColorFilter.mode(
                            _backgroundAnimationControllerValue > 0.5
                                ? Theme.of(context).primaryColor
                                : Colors.white,
                            BlendMode.srcIn,
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return sizedBoxWidth(5);
                    },
                  );
                },
              ),

              /// Login button with clipper
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AnimatedBuilder(
                  animation: _bloc.loginButtonAnimationController,
                  builder: (context, _) {
                    return ClipPath(
                      clipper: LogInButtonCustomPath(
                        _bloc.loginButtonAnimationController.value,
                      ),
                      child: Container(
                        height: size.height * 0.35,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: size.height * 0.1,
                child: Visibility(
                  visible: _showLoginButton,
                  child: CustomFilledButton(
                    buttonLabel: 'Login',
                    buttonOnPressed: () {
                      _bloc.loginButtonNavigationAnimationController.forward();
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return const LogInScreen();
                          },
                          transitionDuration:
                              const Duration(milliseconds: 1000),
                          transitionsBuilder: (
                            context,
                            animation,
                            secondaryAnimation,
                            child,
                          ) {
                            const begin = 0.0;
                            const end = 1.0;
                            const curve = Curves.easeInExpo;
                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));
                            var opacityAnimation = animation.drive(tween);
                            return Opacity(
                              opacity: opacityAnimation.value,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    desiredButtonShape:
                        MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                        side: const BorderSide(
                          color: Colors.white,
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              /// Clipper to show when navigating to login screen
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0,
                child: AnimatedBuilder(
                  animation: _bloc.loginButtonNavigationAnimationController,
                  builder: (context, _) {
                    return ClipPath(
                      clipper: BackgroundCustomPath(
                        value: _bloc
                            .loginButtonNavigationAnimationController.value,
                        desiredDx: 0,
                      ),
                      child: Container(
                        height: size.height,
                        width: double.infinity,
                        color: Theme.of(context).primaryColor,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
