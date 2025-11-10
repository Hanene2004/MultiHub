// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
<<<<<<< HEAD

import 'package:my_app_new/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
=======
import 'package:my_app/main.dart';

void main() {
  testWidgets('App initialization test', (WidgetTester tester) async {
    // Build our app and trigger a frame with isLoggedIn set to false
    await tester.pumpWidget(const MyApp(isLoggedIn: false));

    // Verify that we're on the inscription page
    expect(find.text('Page Inscription'), findsOneWidget);
    expect(find.text('Identifiant'), findsOneWidget);
    expect(find.text('Mot de passe'), findsOneWidget);

    // Test navigation buttons exist
    expect(find.byType(ElevatedButton), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });

  testWidgets('Logged in state test', (WidgetTester tester) async {
    // Build our app and trigger a frame with isLoggedIn set to true
    await tester.pumpWidget(const MyApp(isLoggedIn: true));

    // Verify that we're on the home page
    expect(find.text('Page Home'), findsOneWidget);
    expect(find.text('Bienvenue !'), findsOneWidget);
    expect(find.text('Déconnexion'), findsOneWidget);
>>>>>>> a91dba3157045feb26350301988471fefc93d873
  });
}
