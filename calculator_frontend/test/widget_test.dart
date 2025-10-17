import 'package:flutter_test/flutter_test.dart';
import 'package:calculator_frontend/main.dart';

void main() {
  testWidgets('Calculator launches with Ocean theme and shows display', (WidgetTester tester) async {
    await tester.pumpWidget(const CalculatorApp());

    expect(find.text('Ocean Calculator'), findsOneWidget);
    // Display should start at 0
    expect(find.text('0'), findsOneWidget);
    // Buttons present
    expect(find.text('1'), findsOneWidget);
    expect(find.text('+'), findsOneWidget);
    expect(find.text('='), findsOneWidget);
  });
}
