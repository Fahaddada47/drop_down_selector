import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list_item_selector/list_item_selector.dart';

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
