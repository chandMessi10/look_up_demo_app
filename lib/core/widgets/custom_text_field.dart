import 'package:flutter/material.dart';

class CustomFormFieldWidget extends StatelessWidget {
  const CustomFormFieldWidget({
    Key? key,
    required this.textEditingController,
    required this.labelName,
    this.validatorFunction,
    this.obscurePassword,
    this.suffixIconFunction,
    this.focusNode,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String labelName;
  final String? Function(String?)? validatorFunction;
  final bool? obscurePassword;
  final VoidCallback? suffixIconFunction;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: textEditingController,
      obscureText: obscurePassword != null && obscurePassword!,
      cursorColor: Colors.white,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
      focusNode: focusNode,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedErrorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        errorStyle: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: Colors.white,
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white12),
        ),
        isDense: true,
        iconColor: Colors.white,
        label: Text(labelName),
        labelStyle: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        suffixIcon: Visibility(
          visible: obscurePassword != null,
          child: IconButton(
            onPressed: suffixIconFunction,
            icon: Icon(
              obscurePassword != null && obscurePassword!
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),
            color: Colors.white,
          ),
        ),
      ),
      validator: validatorFunction,
    );
  }
}
