import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_testing_demo/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('App Integration Test', () {
    testWidgets('Login and navigate to home screen',
        (WidgetTester tester) async {
      app.main(); // Start the app
      await tester.pumpAndSettle();

      final usernameField = find.byKey(const ValueKey('username'));
      final passwordField = find.byKey(const ValueKey('password'));
      final loginButton = find.byKey(const ValueKey('login_button'));
      final homeScreen = find.byKey(const ValueKey('home_screen'));

      // Enter username
      await tester.enterText(usernameField, 'testuser');
      await tester.pumpAndSettle();

      // Enter password
      await tester.enterText(passwordField, 'password');
      await tester.pumpAndSettle();

      // Tap the login button
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // Verify that the home screen is displayed
      expect(homeScreen, findsOneWidget);
    });
  });
}
