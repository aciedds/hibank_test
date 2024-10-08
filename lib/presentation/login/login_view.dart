import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hibank_test/presentation/login/login_controller.dart';
import 'package:hibank_test/presentation/routes.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          TextField(
            controller: controller.emailTEC,
            focusNode: controller.emailFN,
            decoration: const InputDecoration(
              hintText: "Email",
              label: Text("Email"),
            ),
          ),
          TextField(
            controller: controller.passwordTEC,
            focusNode: controller.passwordFN,
            decoration: const InputDecoration(
              hintText: "Password",
              label: Text("Password"),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () => Get.toNamed(Routes.FORGOT_PASSWORD),
                child: Text("Forgot Password"),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: controller.login,
            child: const Text("Login"),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container(height: 1, color: Colors.grey)),
              SizedBox(width: 10),
              Text("Or"),
              SizedBox(width: 10),
              Expanded(child: Container(height: 1, color: Colors.grey)),
            ],
          ),
          ElevatedButton(
            onPressed: controller.signInWithGoogle,
            child: const Text("Login with Google"),
          ),
        ],
      ),
    );
  }
}
