import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quizz/bindings/binding.dart';
import 'package:quizz/screens/login.dart';
import 'package:quizz/screens/sign_up.dart';
import 'package:quizz/screens/splash.dart';
void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Quizz());
}

class Quizz extends StatelessWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}


