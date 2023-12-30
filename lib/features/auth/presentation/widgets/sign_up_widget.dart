import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:look_up_demo_app/core/utils/input_validation_mixin.dart';
import 'package:look_up_demo_app/core/widgets/custom_filled_button.dart';
import 'package:look_up_demo_app/core/widgets/custom_form_field_widget.dart';
import 'package:look_up_demo_app/features/auth/presentation/bloc/auth_bloc.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget>
    with InputValidationMixin, SingleTickerProviderStateMixin {
  late GlobalKey<FormState> _signUpFormKey;
  late AnimationController _animationController;

  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late FocusNode _emailFocusNode;
  late FocusNode _passwordFocusNode;

  late AuthBloc _authBloc;

  @override
  void initState() {
    _signUpFormKey = GlobalKey<FormState>();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();
    _authBloc = AuthBloc();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8),
          child: InkWell(
            borderRadius: BorderRadius.circular(4),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: "Don't have an account yet ? ",
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'SIGNUP',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            onTap: () {
              if (!state.isLogInLoading) {
                _animationController.forward();
                showModalBottomSheet(
                  context: context,
                  elevation: 2,
                  useSafeArea: true,
                  isDismissible: !state.isSignUpLoading,
                  transitionAnimationController: _animationController,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  builder: (context) {
                    return Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Form(
                        key: _signUpFormKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Expanded(
                                  child: Text(
                                    'Create your account',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    if (!state.isSignUpLoading) {
                                      return Navigator.pop(context);
                                    }
                                  },
                                  icon: const Icon(
                                    Icons.close,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 16),
                            CustomFormFieldWidget(
                              textEditingController: _emailController,
                              labelName: 'Email',
                              focusNode: _emailFocusNode,
                              validatorFunction: emailValidator,
                            ),
                            const SizedBox(height: 16),
                            CustomFormFieldWidget(
                              textEditingController: _passwordController,
                              labelName: 'Password',
                              obscurePassword:
                                  state.obscurePassword ? true : false,
                              focusNode: _passwordFocusNode,
                              validatorFunction: passwordValidator,
                              suffixIconFunction: () {
                                _authBloc.add(
                                  const AuthEvent.togglePasswordVisibility(),
                                );
                              },
                            ),
                            const SizedBox(height: 40),
                            BlocListener<AuthBloc, AuthState>(
                              bloc: _authBloc,
                              listener: (context, state) {
                                if (state.signUpSuccess) {
                                  Navigator.pop(context);
                                  // ScaffoldMessenger.of(context).showSnackBar(
                                  //   const SnackBar(
                                  //     content: Text('Signed up successfully.'),
                                  //   ),
                                  // );
                                }
                                if (!state.signUpSuccess &&
                                    state.networkMessage != '') {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(state.networkMessage),
                                    ),
                                  );
                                }
                              },
                              child: SizedBox(
                                width: double.infinity,
                                child: CustomFilledButton(
                                  buttonLabel: 'SIGNUP',
                                  buttonOnPressed: () {
                                    if (_signUpFormKey.currentState!
                                        .validate()) {
                                      _authBloc.add(
                                        AuthEvent.createUserSubmitted(
                                          _emailController.text.trim(),
                                          _passwordController.text.trim(),
                                          context,
                                        ),
                                      );
                                    }
                                  },
                                  desiredBackgroundColor: Colors.white,
                                  desiredTextColor: const Color(0xFF1D67DD),
                                  isLoading: state.isSignUpLoading,
                                ),
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        );
      },
    );
  }
}
