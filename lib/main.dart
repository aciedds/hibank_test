import 'package:hibank_test/di/injection.dart';
import 'package:hibank_test/presentation/pages.dart';
import 'package:hibank_test/utils/firebase_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseUtils.init();
  await configureDependencies();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Hibank Test",
      initialRoute: Pages.initial,
      getPages: Pages.routes,
    );
  }
}
