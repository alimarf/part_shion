import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_landing_page/app.dart';

void main() {
  testWidgets('App should render home page', (tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Verify that our app renders the home page with the title
    expect(find.text('FlutterLand'), findsOneWidget);
    expect(find.text('Build Beautiful Apps'), findsOneWidget);
  });

  testWidgets('Should show features section', (tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // Scroll to features section
    await tester.dragUntilVisible(
      find.text('Why Choose Us'),
      find.byType(SingleChildScrollView),
      const Offset(0, -300),
    );
    await tester.pumpAndSettle();

    // Verify features section is visible
    expect(find.text('Why Choose Us'), findsOneWidget);
    expect(find.byType(Card), findsWidgets);
  });
}
