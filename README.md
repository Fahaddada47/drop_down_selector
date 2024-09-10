
# ListItemSelector

A highly customizable `DropdownButton` widget for Flutter, designed to make dropdowns more flexible and easy to implement.

## Features

- 🎨 Customizable borders, colors, and fonts
- ✅ Built-in validation support
- 📝 Seamlessly integrates with form validation

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  list_item_selector: ^1.0.0
```

## Example

```dart
import 'package:flutter/material.dart';
import 'package:list_item_selector/list_item_selector.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String? title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedGender;

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
              selectedValue: _selectedGender,
              items: const ['Male', 'Female', 'Other'],
              onChanged: (String? newValue) {
                setState(() {
                  _selectedGender = newValue;
                });
              },
              hintText: 'Gender',
            ),
          ],
        ),
      ),
    );
  }
}
```

## Parameters

### **Required Parameters**:

| Parameter        | Description                                                  |
|------------------|--------------------------------------------------------------|
| `String? selectedValue` | The currently selected value in the dropdown.              |
| `List<String> items`    | The list of items to display in the dropdown.              |
| `String hintText`       | Placeholder text when no value is selected.               |
| `void Function(String?) onChanged` | Callback triggered when the user selects a value. |

### **Optional Parameters**:

| Parameter                      | Description                                                                  | Default Value                  |
|---------------------------------|------------------------------------------------------------------------------|--------------------------------|
| `String? Function(String?)? validator` | A validation function for form support.                                      | `null`                         |
| `Color? borderColor`            | Customize the border color.                                                   | `Color(0xFFD7D7FF)`            |
| `Color? focusedBorderColor`     | Color of the border when focused.                                             | `Color(0xFF5D5CFF)`            |
| `Color? errorBorderColor`       | Color of the border when validation fails.                                    | `Colors.red`                   |
| `Color? dropdownColor`          | Background color of the dropdown menu.                                        | `null`                         |
| `double? fontSize`              | Font size of the text.                                                        | `14.0`                         |
| `Color? hintColor`              | Color of the hint text.                                                       | `Color(0xffBEBEBE)`            |
| `Color? labelColor`             | Color of the label text.                                                      | `Color(0xff828290)`            |
| `double borderRadius`           | Radius of the dropdown border.                                                | `8.0`                          |
| `EdgeInsetsGeometry? contentPadding` | Padding inside the dropdown.                                               | `null`                         |
| `Widget? suffixIcon`            | Customizable icon for the dropdown.                                           | `Icon(Icons.arrow_drop_down_circle_outlined)` |
| `TextStyle? itemTextStyle`      | Custom text style for dropdown items.                                         | `null`                         |
| `double? elevation`             | Elevation of the dropdown.                                                    | `8.0`                          |
| `double iconSize`               | Size of the dropdown icon.                                                    | `24.0`                         |
| `bool isExpanded`               | Whether the dropdown should fill the available width.                         | `true`                         |
| `double? width`                 | Width of the dropdown.                                                        | `null`                         |
| `double? height`                | Height of the dropdown.                                                       | `null`                         |
| `Widget? labelWidget`           | Custom label widget above the dropdown.                                       | `null`                         |

---

Feel free to use this package to create beautiful and customizable dropdowns effortlessly. Happy coding! 🎉