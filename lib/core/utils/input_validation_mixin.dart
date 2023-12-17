mixin InputValidationMixin {
  String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter name.';
    }

    if (value.length < 2) {
      return 'Name must be at least 2 characters long.';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email address.';
    }

    bool isValidEmail =
    RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+$').hasMatch(value);
    if (!isValidEmail) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password.';
    }

    if (value.length < 6) {
      return 'Password must be at least 8 characters long.';
    }
    return null;
  }
}