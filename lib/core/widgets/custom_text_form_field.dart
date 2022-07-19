import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.onSaved,
    this.validator,
    this.decoration = const InputDecoration(),
  }) : super(key: key);

  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final InputDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      style: const TextStyle(color: Colors.black),
      decoration: decoration.copyWith(
        isCollapsed: true,
      ),
    );
  }
}
