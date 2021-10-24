import 'package:flutter_test/flutter_test.dart';
import 'package:oblio/app.dart';

void main() {
  testWidgets('test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());
  });
}
