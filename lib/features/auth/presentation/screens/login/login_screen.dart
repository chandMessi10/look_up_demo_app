import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:look_up_demo_app/core/utils/app_constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/input_validation_mixin.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';
import 'package:look_up_demo_app/core/widgets/custom_form_field_widget.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/features/auth/domain/entities/social_media_login_button_model.dart';
import 'package:look_up_demo_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/custom_login_icon_button.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/login_screen_background_clipper.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/sign_up_confetti_widget.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/sign_up_widget.dart';
import 'package:look_up_demo_app/features/home/presentation/screen/pre_loader_home_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> with InputValidationMixin {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  List<SocialMediaLoginButtonModel> socialMediaLoginList = [
    SocialMediaLoginButtonModel(
      socialMediaIconPath: AppConstants.gmailIconPath,
      buttonFunction: () {},
    ),
    SocialMediaLoginButtonModel(
      socialMediaIconPath: AppConstants.facebookIconPath,
      buttonFunction: () {},
    ),
    SocialMediaLoginButtonModel(
      socialMediaIconPath: AppConstants.xIconPath,
      buttonFunction: () {},
    ),
  ];

  final AuthBloc _authBloc = AuthBloc();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
        return CustomScaffoldWidget(
          canPopScreen: false,
          scaffoldBody: SingleChildScrollView(
            child: SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  /// Background Clipped Container
                  ClipPath(
                    clipper: LoginScreenBackgroundClipper(),
                    child: Container(
                      height: size.height / 1.4,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),

                  /// Screen Components
                  Positioned(
                    left: 0,
                    right: 0,
                    top: size.height * 0.1,
                    height: size.height,
                    child: BlocListener<AuthBloc, AuthState>(
                      bloc: _authBloc,
                      listener: (BuildContext context, state) {
                        if (state.signUpSuccess) {
                          showDialog(
                            context: context,
                            builder: (context) => const SignUpConfettiWidget(),
                          );
                        }
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          /// App Logo
                          Align(
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              AppConstants.appLogoPath,
                              height: size.height * 0.075,
                            ),
                          ),
                          sizedBoxHeight(size.height * 0.04),

                          /// Title & Text Form Fields
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.072,
                              vertical: size.height * 0.01,
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                  CustomFormFieldWidget(
                                    textEditingController: _emailController,
                                    labelName: 'Email',
                                    focusNode: _emailFocusNode,
                                    validatorFunction: emailValidator,
                                  ),
                                  sizedBoxHeight(size.height * 0.02),
                                  CustomFormFieldWidget(
                                    textEditingController: _passwordController,
                                    labelName: 'Password',
                                    obscurePassword:
                                        state.obscurePassword ? true : false,
                                    focusNode: _passwordFocusNode,
                                    validatorFunction: passwordValidator,
                                    suffixIconFunction: () {
                                      _authBloc.add(
                                        const AuthEvent
                                            .togglePasswordVisibility(),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                          sizedBoxHeight(size.height * 0.07),

                          /// Login Button
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.072,
                              vertical: size.height * 0.01,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: BlocListener<AuthBloc, AuthState>(
                                    bloc: _authBloc,
                                    listener: (context, state) {
                                      if (state.loginSuccess) {
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation,
                                                secondaryAnimation) {
                                              return const PreLoaderHomeScreen();
                                            },
                                            transitionDuration: const Duration(
                                                milliseconds: 1000),
                                            transitionsBuilder: (
                                              context,
                                              animation,
                                              secondaryAnimation,
                                              child,
                                            ) {
                                              const begin = 0.0;
                                              const end = 1.0;
                                              const curve = Curves.easeInExpo;
                                              var tween = Tween(
                                                      begin: begin, end: end)
                                                  .chain(
                                                      CurveTween(curve: curve));
                                              var opacityAnimation =
                                                  animation.drive(tween);
                                              return Opacity(
                                                opacity: opacityAnimation.value,
                                                child: child,
                                              );
                                            },
                                          ),
                                        );
                                      }
                                      if (!state.loginSuccess &&
                                          state.networkMessage != '') {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(state.networkMessage),
                                          ),
                                        );
                                      }
                                    },
                                    child: CustomFilledButton(
                                      buttonLabel: 'LOGIN',
                                      buttonOnPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _authBloc.add(
                                            AuthEvent.loginSubmitted(
                                              _emailController.text.trim(),
                                              _passwordController.text.trim(),
                                              context,
                                            ),
                                          );
                                        }
                                      },
                                      isLoading: state.isLogInLoading,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          sizedBoxHeight(size.height * 0.05),

                          /// Login Options
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'or login with',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF6E6B6B),
                                ),
                              ),
                              sizedBoxHeight(size.height * 0.015),
                              Container(
                                width: double.infinity,
                                height: size.height * 0.07,
                                padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.072,
                                  vertical: size.height * 0.005,
                                ),
                                alignment: Alignment.center,
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final buttonData =
                                        socialMediaLoginList[index];
                                    return SocialMediaLoginButtonWidget(
                                      onTapFunction: buttonData.buttonFunction,
                                      iconAssetPath:
                                          buttonData.socialMediaIconPath,
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return sizedBoxWidth(size.width * 0.04);
                                  },
                                  itemCount: socialMediaLoginList.length,
                                ),
                              ),
                            ],
                          ),
                          sizedBoxHeight(size.height * 0.05),

                          /// Sign Up
                          const SignUpWidget(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
