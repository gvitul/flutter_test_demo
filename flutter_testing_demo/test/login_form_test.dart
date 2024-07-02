import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_demo/login_form.dart';

void main() {
  testWidgets('Login form test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: Scaffold(body: LoginForm())));

    // Verify initial state
    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // Enter text into the text fields
    await tester.enterText(find.byKey(const ValueKey('username')), 'testuser');
    await tester.enterText(find.byKey(const ValueKey('password')), 'password');

    // Tap the login button
    await tester.tap(find.byKey(const ValueKey('login_button')));
    await tester.pump();

    // Add more assertions based on your login logic
  });
}
