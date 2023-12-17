import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/input_validation_mixin.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/core/widgets/custom_text_field.dart';
import 'package:look_up_demo_app/features/auth/domain/entities/social_media_login_button_model.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/custom_login_icon_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> with InputValidationMixin {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

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

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomScaffoldWidget(
      scaffoldBody: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
              const LoginScreenClippedContainer(),

              /// Social Login Buttons
              Positioned(
                left: 0,
                right: 0,
                bottom: 200,
                child: Container(
                  width: double.infinity,
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 4,
                  ),
                  alignment: Alignment.center,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final buttonData = socialMediaLoginList[index];
                      return SocialMediaLoginButtonWidget(
                        onTapFunction: buttonData.buttonFunction,
                        iconAssetPath: buttonData.socialMediaIconPath,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return sizedBoxWidth(8);
                    },
                    itemCount: socialMediaLoginList.length,
                  ),
                ),
              ),

              /// Form Field
              Positioned(
                left: 0,
                right: 0,
                top: 100,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 4,
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
                        sizedBoxHeight(8),
                        CustomFormFieldWidget(
                          textEditingController: _emailController,
                          labelName: 'Email',
                          focusNode: _emailFocusNode,
                          validatorFunction: emailValidator,
                        ),
                        sizedBoxHeight(8),
                        CustomFormFieldWidget(
                          textEditingController: _passwordController,
                          labelName: 'Password',
                          obscurePassword: true,
                          focusNode: _passwordFocusNode,
                          validatorFunction: passwordValidator,
                          suffixIconFunction: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              /// Auth Buttons
              Positioned(
                left: 0,
                right: 0,
                bottom: 370,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: CustomFilledButton(
                          buttonLabel: 'SIGNUP',
                          buttonOnPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          desiredBackgroundColor: Colors.white,
                          desiredTextColor: const Color(0xFF1D67DD),
                        ),
                      ),
                      sizedBoxWidth(10),
                      Flexible(
                        child: CustomFilledButton(
                          buttonLabel: 'LOGIN',
                          buttonOnPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginScreenClippedContainer extends StatelessWidget {
  const LoginScreenClippedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height / 1.6,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height / 1.2)
      ..quadraticBezierTo(
        size.width / 1.85, // Control point x
        size.height / 1.07, // Control point y
        size.width, // End point x
        size.height / 1.2, // End point y
      )
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
