import 'package:flutter_test/flutter_test.dart';
import 'package:week14_static_ui/main.dart';

void main() {
  testWidgets('NBSB Portal renders smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const NbsbPortalApp());
    expect(find.byType(NbsbPortalApp), findsOneWidget);
  });
}