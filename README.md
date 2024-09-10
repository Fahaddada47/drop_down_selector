# ListItemSelector 

A customizable dropdown selector widget for Flutter.

## Features

- Customizable borders, colors, and fonts
- Validation support
- Works with form validation

## Usage

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  list_item_selector: ^1.0.0

Expample

import 'package:flutter/material.dart';
import 'package:list_item_selector/list_item_selector.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedgender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListItemSelector(
              width: 300,
              selectedValue: _selectedgender,
              items: const ['Male', 'Female', 'Other'],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedgender = newValue;
                });
              },
              hintText: 'Gender',
            )
          ],
        ),
      ),
    );
  }
}


Parameters
Required Parameters:
String? selectedValue: The currently selected value in the dropdown.
List<String> items: The list of items to display in the dropdown.
String hintText: Placeholder text when no value is selected.
void Function(String?) onChanged: A callback function triggered when the user selects a value.
Optional Parameters:
String? Function(String?)? validator: A validation function for form support.
Color? borderColor: Customize the border color (default is Color(0xFFD7D7FF)).
Color? focusedBorderColor: Color of the border when focused (default is Color(0xFF5D5CFF)).
Color? errorBorderColor: Color of the border when validation fails (default is Colors.red).
Color? dropdownColor: Background color of the dropdown menu.
double? fontSize: Font size of the text (default is 14.0).
Color? hintColor: Color of the hint text (default is Color(0xffBEBEBE)).
Color? labelColor: Color of the label text (default is Color(0xff828290)).
double borderRadius: Radius of the dropdown border (default is 8.0).
EdgeInsetsGeometry? contentPadding: Padding inside the dropdown.
Widget? suffixIcon: Customizable icon for the dropdown (default is an arrow).
TextStyle? itemTextStyle: Custom text style for dropdown items.
double? elevation: Elevation of the dropdown (default is 8.0).
double iconSize: Size of the dropdown icon (default is 24.0).
bool isExpanded: Whether the dropdown should fill the available width (default is true).
double? width: Width of the dropdown.
double? height: Height of the dropdown.
Widget? labelWidget: Custom label widget above the dropdown.