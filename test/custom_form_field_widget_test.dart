import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:look_up_demo_app/core/widgets/custom_form_field_widget.dart';

import 'base/mixin_mock_class.dart';
import 'base/widget_tester_extension.dart';

void main() {
  MockInputValidationMixinClass validation = MockInputValidationMixinClass();

  testWidgets(
    'CustomFormField testing for Email',
    (WidgetTester tester) async {
      await tester.loadWidget(
        widget: CustomFormFieldWidget(
          textEditingController: TextEditingController(),
          labelName: 'Email',
          focusNode: FocusNode(),
          validatorFunction: (value) => validation.emailValidator(value),
        ),
      );

      // Verify the initial state.
      expect(find.text('Email'), findsOneWidget);
      expect(find.text('Please enter your email address.'), findsNothing);

      // Enter an invalid email.
      await tester.enterText(find.byType(TextFormField), 'invalidemail');
      await tester.pump();

      // Trigger validation by tapping somewhere else.
      await tester.tap(find.text('Email'), warnIfMissed: false);
      await tester.pump();

      // Verify that the error message is displayed for invalid email.
      expect(find.text('Please enter a valid email address.'), findsOneWidget);

      // expect(find.text('Please enter your email address.'), findsOneWidget);
      //
      // // Enter a valid email.
      // await tester.enterText(find.byType(TextFormField), 'valid@email.com');
      // await tester.pump();
      //
      // // Trigger validation again.
      // await tester.tap(find.text('Email'));
      // await tester.pump();
      //
      // // Verify that no error message is displayed for a valid email.
      // expect(find.text('Please enter your email address.'), findsNothing);
    },
  );
}
