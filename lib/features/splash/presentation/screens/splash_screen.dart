import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:look_up_demo_app/core/navigation/go_router_config.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoAnimationController;
  late AnimationController _backgroundAnimationController;
  late AnimationController _loginButtonAnimationController;

  @override
  void initState() {
    super.initState();
    _logoAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _backgroundAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _loginButtonAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _logoAnimationController.forward().then((value) {
      if (_logoAnimationController.isCompleted) {
        _backgroundAnimationController.forward().then((value) {
          if (_backgroundAnimationController.isCompleted) {
            _loginButtonAnimationController.forward();
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
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
              animation: _backgroundAnimationController,
              builder: (context, _) {
                return ClipPath(
                  clipper: BackgroundCustomPath(
                    _backgroundAnimationController.value,
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
            animation: _logoAnimationController,
            builder: (context, child) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: "LOOKUP".length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return FadeTransition(
                    opacity: Tween<double>(begin: 0.0, end: 1.0).animate(
                      CurvedAnimation(
                        parent: _logoAnimationController,
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
                        _backgroundAnimationController.value > 0.5
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
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: _loginButtonAnimationController,
              builder: (context, _) {
                return ClipPath(
                  clipper: LogInButtonCustomPath(
                    _loginButtonAnimationController.value,
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
          Visibility(
            visible: _loginButtonAnimationController.isCompleted,
            child: Positioned(
              top: 80,
              child: CustomFilledButton(
                buttonLabel: 'Login',
                buttonOnPressed: () {
                  context.goNamed(AppRoute.login.name);
                },
                desiredWidth: 150,
                desiredHeight: 30,
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
        ],
      ),
    );
  }

  @override
  void dispose() {
    _logoAnimationController.dispose();
    _backgroundAnimationController.dispose();
    _loginButtonAnimationController.dispose();
    super.dispose();
  }
}

class BackgroundCustomPath extends CustomClipper<Path> {
  final double value;

  BackgroundCustomPath(this.value);

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCenter(
        center: Offset(size.width / 2, 0),
        width: size.width * 2.3 * value,
        height: size.height * 2.3 * value,
      ),
    );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class LogInButtonCustomPath extends CustomClipper<Path> {
  final double value;

  LogInButtonCustomPath(this.value);

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCenter(
        center: Offset(size.width / 2, 0),
        width: size.width * 1.2 * value,
        height: size.height * 1.2 * value,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
