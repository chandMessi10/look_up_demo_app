import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:look_up_demo_app/features/auth/presentation/widgets/sign_up_widget.dart';

import 'base/widget_tester_extension.dart';

void main() {
  testWidgets('SignUpWidget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.loadWidget(widget: const SignUpWidget());

    // Verify that the initial text is displayed
    // use 'findRichText' for RichText Widget which is showing texts
    expect(
      find.text("Don't have an account yet ? SIGNUP", findRichText: true),
      findsOneWidget,
    );

    // Tap on the SignUpWidget to show the bottom sheet.
    await tester.tap(find.byType(InkWell));
    await tester.pump();

    // Verify that the bottom sheet content is displayed.
    expect(find.text('Create your account'), findsOneWidget);
    expect(
      find.text('SIGNUP'),
      findsNothing, // SignUpWidget should not be visible in the bottom sheet.
    );
  });
}
