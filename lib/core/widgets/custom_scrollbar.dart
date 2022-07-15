import 'package:flutter/material.dart';

class CustomScrollbar extends StatelessWidget {
  const CustomScrollbar({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
      thumbColor: Colors.black,
      crossAxisMargin: 4,
      mainAxisMargin: 16,
      isAlwaysShown: true,
      radius: const Radius.circular(4),
      child: child,
    );
  }
}
