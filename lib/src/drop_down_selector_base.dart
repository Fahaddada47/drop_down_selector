import 'package:flutter/material.dart';

class DropDownSelector extends StatelessWidget {
  final String? selectedValue;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;
  final FormFieldValidator<String?>? validator;

  // Additional parameters for more customization
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final Color? dropdownColor;
  final double? fontSize;
  final Color? hintColor;
  final Color? labelColor;
  final double borderRadius;
  final EdgeInsetsGeometry? contentPadding;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? itemTextStyle;
  final double? elevation;
  final double iconSize;
  final bool isExpanded;

  // Parameters to control size
  final double? width;
  final double? height;

  // Label widget
  final Widget? labelWidget;

  const DropDownSelector({
    Key? key,
    required this.selectedValue,
    required this.items,
    required this.hintText,
    required this.onChanged,
    this.validator,
    this.borderColor = const Color(0xFFD7D7FF),
    this.focusedBorderColor = const Color(0xFF5D5CFF),
    this.errorBorderColor = Colors.red,
    this.dropdownColor,
    this.fontSize = 14.0,
    this.hintColor = const Color(0xffBEBEBE),
    this.labelColor = const Color(0xff828290),
    this.borderRadius = 8.0,
    this.contentPadding,
    this.prefixIcon,
    this.suffixIcon = const Icon(Icons.arrow_drop_down_circle_outlined),  // Default suffix icon
    this.itemTextStyle,
    this.elevation = 8.0,
    this.iconSize = 24.0,
    this.isExpanded = true,
    this.width,
    this.height,
    this.labelWidget,
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
        borderSide: BorderSide(
          color: errorBorderColor!,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        borderSide: BorderSide(
          color: errorBorderColor!,
        ),
      ),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelWidget != null) labelWidget!,
        SizedBox(
          width: width,  // Set width
          height: height,  // Set height
          child: DropdownButtonFormField<String>(
            decoration: _buildInputDecoration(),
            value: selectedValue,
            hint: Text(hintText),
            items: items.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: itemTextStyle ?? TextStyle(fontSize: fontSize),
                ),
              );
            }).toList(),
            onChanged: onChanged,
            validator: validator,
            dropdownColor: dropdownColor,
            elevation: elevation!.toInt(),
            iconSize: iconSize,
            isExpanded: isExpanded,
          ),
        ),
      ],
    );
  }
}
