import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Creating a Flutter extension to enhance the functionality of WidgetTester.
extension WidgetTesterExtension on WidgetTester {
  // A custom function to simplify the process of loading a widget
  // into the testing environment. This function sets up a basic
  // MaterialApp with a Scaffold containing the specified widget.
  // The goal is to reduce redundancy and improve code
  // readability in test files.
  /// Example usage:
  ///
  /// ```dart
  /// tester.loadWidget(
  ///   widget: YourWidgetToBeTested(), // Widget to be tested.
  /// );
  /// ```
  Future loadWidget({
    required Widget widget, // The widget to be tested.
  }) async {
    await pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: widget,
        ),
      ),
    );
  }
}
