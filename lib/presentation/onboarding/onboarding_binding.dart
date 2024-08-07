import 'package:hibank_test/presentation/onboarding/onboarding_controller.dart';
import 'package:get/get.dart';

class OnboardingBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController());
  }
}