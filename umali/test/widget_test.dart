import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:umali/main.dart';

void main() {
  testWidgets('App shows the BlushNet newsfeed', (WidgetTester tester) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();

    expect(find.text('BlushNet'), findsOneWidget);
    expect(find.text('Jushell Umali'), findsOneWidget);
  });

  testWidgets('Notifications tab displays notifications', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MainApp());
    await tester.pumpAndSettle();

    await tester.tap(find.byIcon(Icons.notifications));
    await tester.pumpAndSettle();

    expect(find.text('Notifications'), findsWidgets);
    expect(find.text('Steve Rogers'), findsOneWidget);
    expect(find.text('Tony Stark'), findsOneWidget);
  });
}
