# DropDownSelector

A customizable dropdown selector widget for Flutter.

## Features

- Customizable borders, colors, and fonts
- Validation support
- Works with form validation

## Usage

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  drop_down_selector: ^0.0.1

Expample
DropDownSelector(
  selectedValue: _selectedValue,
  items: ['Option 1', 'Option 2', 'Option 3'],
  hintText: 'Select an option',
  onChanged: (newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  },
)
