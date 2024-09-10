import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:drop_down_selector/drop_down_selector.dart';

void main() {
  testWidgets('DropDownSelector widget test', (WidgetTester tester) async {
    String? selectedValue;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ListItemSelector(
            selectedValue: selectedValue,
            items: ['Option 1', 'Option 2'],
            hintText: 'Select an option',
            onChanged: (newValue) {
              selectedValue = newValue;
            },
          ),
        ),
      ),
    );

  });
}
