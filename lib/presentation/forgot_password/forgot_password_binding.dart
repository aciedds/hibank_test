import 'package:hibank_test/presentation/forgot_password/forgot_password_controller.dart';
import 'package:hibank_test/presentation/login/login_controller.dart';
import 'package:get/get.dart';

class ForgotPasswordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPasswordController());
  }
}
