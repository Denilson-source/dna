import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/utils/constants.dart';
import '../../core/widgets/custom_text_form_field.dart';
import 'auth_controller.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late final AuthController controller;

  @override
  void initState() {
    super.initState();

    controller = Provider.of(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    AuthController controller = Provider.of(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Image.asset(Assets.authBackground),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 42),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTabs(),
                  if (controller.showLogin) _buildLoginForm() else _buildRegisterForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabs() {
    return SizedBox(
      height: 36,
      child: Row(children: [
        Expanded(
          child: GestureDetector(
            onTap: () => controller.changeShowLogin = true,
            child: Container(
              decoration: BoxDecoration(color: controller.showLogin ? Colors.blue : Colors.white),
              child: Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: controller.showLogin ? Colors.white : Colors.blue,
                      ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () => controller.changeShowRegister = true,
            child: Container(
              decoration: BoxDecoration(
                color: controller.showRegister ? Colors.blue : Colors.white,
              ),
              child: Center(
                child: Text(
                  'Cadastro',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: controller.showRegister ? Colors.white : Colors.blue,
                      ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  Widget _buildLoginForm() {
    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          const SizedBox(height: 12),
          CustomTextFormField(
            onSaved: (val) => controller.name = val,
            validator: controller.nameValidator,
            decoration: const InputDecoration(
              hintText: 'Usuário',
            ),
          ),
          const SizedBox(height: 12),
          CustomTextFormField(
            onSaved: (val) => controller.password = val,
            validator: controller.passwordValidator,
            decoration: const InputDecoration(
              hintText: 'Senha',
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: controller.login,
            child: const Text('Entrar'),
          ),
          const Text(
            'Esqueci a senha',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRegisterForm() {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 12),
          const CustomTextFormField(
            decoration: InputDecoration(
              hintText: 'Usuário',
            ),
          ),
          const SizedBox(height: 12),
          const CustomTextFormField(
            decoration: InputDecoration(
              hintText: 'Senha',
            ),
          ),
          const SizedBox(height: 12),
          const CustomTextFormField(
            decoration: InputDecoration(
              hintText: 'Repita a senha',
            ),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Cadastrar'),
          ),
        ],
      ),
    );
  }
}
