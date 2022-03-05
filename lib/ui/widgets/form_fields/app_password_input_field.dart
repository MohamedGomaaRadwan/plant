import 'package:flutter/material.dart';
import '../../resources/index.dart';


import 'index.dart';

class AppPasswordInputField extends StatefulWidget {
  const AppPasswordInputField({
    this.controller,
    this.focusNode,
    this.hintText,
    this.validator,
    this.autofocus = false,
    this.decoration,
    this.style
  });
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final bool autofocus;
  final FormFieldValidator<String>? validator;
  final InputDecoration? decoration;
  final TextStyle? style;

  @override
  _AppPasswordInputFieldState createState() => _AppPasswordInputFieldState();
}

class _AppPasswordInputFieldState extends State<AppPasswordInputField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return AppTextInputField(
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      maxLines: 1,
      hintText: widget.hintText,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: obscureText,
      decoration: widget.decoration,
      style: widget.style,
      suffixIcon: InkWell(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(
            Icons.visibility,
            color: obscureText ? AppPalette.textDisabledColor : AppPalette.textDarkColor,
          )),
    );
  }
}
