import 'package:flutter_test/flutter_test.dart';

import 'package:oblio/main.dart';

void main() {
  testWidgets('test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
