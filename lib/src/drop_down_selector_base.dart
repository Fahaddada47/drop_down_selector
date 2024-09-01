
import 'package:flutter/material.dart';

class DropDownSelector extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;
  final FormFieldValidator<String?>? validator;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double? fontSize;
  final Color? hintColor;
  final Color? labelColor;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;

  const DropDownSelector({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.borderColor = const Color(0xFFD7D7FF),
    this.focusedBorderColor = const Color(0xFF5D5CFF),
    this.fontSize = 14.0,
    this.hintColor = const Color(0xffBEBEBE),
    this.labelColor = const Color(0xff828290),
    this.borderRadius = 8.0,
    this.contentPadding,
  }) : super(key: key);

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      hintText: hintText,
      hintStyle: TextStyle(
        color: hintColor,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      ),
      labelStyle: TextStyle(
        color: labelColor,
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
      ),
      contentPadding: contentPadding,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: borderColor!,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: focusedBorderColor!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: borderColor!,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: const BorderSide(
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: _buildInputDecoration(),
      value: selectedValue,
      hint: Text(hintText),
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
