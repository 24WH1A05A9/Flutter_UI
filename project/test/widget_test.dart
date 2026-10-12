// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:student_e_portfolio/main.dart';

void main() {
  testWidgets('login validates required fields', (tester) async {
    await tester.pumpWidget(const PortfolioApp());

    final loginButton = find.text('Open my portfolio');
    await tester.ensureVisible(loginButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    expect(find.text('Required'), findsNWidgets(2));
  });

  testWidgets('valid login opens the academic dashboard', (tester) async {
    await tester.pumpWidget(const PortfolioApp());

    final rollNumberField = find.byType(TextFormField).at(0);
    await tester.ensureVisible(rollNumberField);
    await tester.enterText(rollNumberField, studentRollNumber);

    final passwordField = find.byType(TextFormField).at(1);
    await tester.ensureVisible(passwordField);
    await tester.enterText(passwordField, 'demo-password');

    final loginButton = find.text('Open my portfolio');
    await tester.ensureVisible(loginButton);
    await tester.tap(loginButton);
    await tester.pumpAndSettle();

    expect(find.text('Academic details'), findsOneWidget);
    expect(find.text('3rd year'), findsOneWidget);
    expect(find.text('BVRIT Hyderabad College of Engineering for Women'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.workspace_premium_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Skills & certifications'), findsOneWidget);
    expect(find.textContaining('JNCIA-Junos Associate'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.volunteer_activism_outlined));
    await tester.pumpAndSettle();
    expect(find.text('Health Tracker Web Application'), findsOneWidget);
    expect(find.text('3rd Prize - Mackathon'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.auto_awesome_outlined));
    await tester.pumpAndSettle();
    expect(
      find.text('Smart Monitoring of Illegal Construction on Government Lands'),
      findsOneWidget,
    );
  });
}
