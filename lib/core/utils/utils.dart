import 'package:flutter/material.dart';

void showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (_) => Container(
      color: Colors.black26,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    ),
  );
}

void closeLoadingDialog(BuildContext context) {
  Navigator.of(context).pop();
}
