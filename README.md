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
ListItemSelector(
  selectedValue: _selectedValue,
  items: ['Option 1', 'Option 2', 'Option 3'],
  hintText: 'Select an option',
  onChanged: (newValue) {
    setState(() {
      _selectedValue = newValue;
    });
  },
)
