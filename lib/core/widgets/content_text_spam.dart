import 'package:flutter/material.dart';

class ContentTextSpam extends TextSpan {
  const ContentTextSpam.normal(
    String text, {
    TextStyle style = const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.normal,
    ),
  }) : super(text: text, style: style);

  const ContentTextSpam.bold(
    String text, {
    TextStyle style = const TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  }) : super(text: text, style: style);
}
