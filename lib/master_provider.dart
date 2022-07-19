import 'package:flutter/material.dart';

class MasterProvider extends ChangeNotifier {
  static final _instance = MasterProvider._();
  static MasterProvider get instance => _instance;

  MasterProvider._();

  String? userName;
}
