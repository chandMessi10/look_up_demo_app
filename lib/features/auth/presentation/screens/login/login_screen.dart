import 'package:flutter/material.dart';
import 'package:look_up_demo_app/core/utils/constants.dart';
import 'package:look_up_demo_app/core/utils/custom_sized_box.dart';
import 'package:look_up_demo_app/core/utils/input_validation_mixin.dart';
import 'package:look_up_demo_app/core/widgets/custom_app_logo_widget.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';
import 'package:look_up_demo_app/core/widgets/custom_rich_text_widget.dart';
import 'package:look_up_demo_app/core/widgets/custom_scaffold_widget.dart';
import 'package:look_up_demo_app/core/widgets/custom_text_field.dart';
import 'package:look_up_demo_app/features/auth/domain/entities/social_media_login_button_model.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/custom_login_icon_button.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/login_screen_background_clipper.dart';

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
                  height: size.height / 1.5,
                  color: Theme.of(context).primaryColor,
                ),
              ),

              /// Logo
              Positioned(
                top: size.height * 0.1,
                left: 0,
                right: 0,
                child: const CustomAppLogoWidget(),
              ),

              /// Form Field
              Positioned(
                left: 0,
                right: 0,
                top: size.height * 0.181,
                child: Container(
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
                top: size.height * 0.530,
                child: Container(
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
                      Expanded(
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

              /// Social Login Buttons
              Positioned(
                left: 0,
                right: 0,
                bottom: size.height * 0.187,
                child: Column(
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
                          final buttonData = socialMediaLoginList[index];
                          return SocialMediaLoginButtonWidget(
                            onTapFunction: buttonData.buttonFunction,
                            iconAssetPath: buttonData.socialMediaIconPath,
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
              ),

              /// Sign Up Text Button
              Positioned(
                right: 0,
                left: 0,
                bottom: size.height * 0.075,
                child: InkWell(
                  onTap: () {},
                  child: const CustomRichTextWidget(
                    primaryText: "Don't have an account yet ? ",
                    secondaryText: 'SIGNUP',
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
