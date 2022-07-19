import 'package:dna/core/utils/utils.dart';
import 'package:dna/master_provider.dart';
import 'package:dna/routes.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  AuthController(this.context);

  final BuildContext context;

  final formKey = GlobalKey<FormState>();

  String? name, password;

  bool showLogin = true;
  bool showRegister = false;

  set changeShowLogin(bool val) {
    showLogin = val;
    showRegister = !val;
    notifyListeners();
  }

  set changeShowRegister(bool val) {
    showRegister = val;
    showLogin = !val;
    notifyListeners();
  }

  String? nameValidator(String? text) {
    if (text!.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  String? passwordValidator(String? text) {
    if (text!.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  void login() async {
    if (!formKey.currentState!.validate()) return;
    formKey.currentState!.save();

    showLoadingDialog(context);
    await Future.delayed(const Duration(seconds: 2));
    closeLoadingDialog(context);

    MasterProvider.instance.userName = name;
    Navigator.of(context).pushReplacementNamed(Routes.home);
  }
}
