// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_change_background/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('flutter_change_background app test',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MainWidget());

    // Verify that texts exist.
    expect(find.text('Hey\nthere'), findsOneWidget);
    expect(find.text('Tap the screen\nto change background'), findsOneWidget);
  });
}
