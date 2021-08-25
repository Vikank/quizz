import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/bindings/binding.dart';
import 'package:quizz/screens/login.dart';
import 'package:quizz/screens/sign_up.dart';
void main(){
  runApp(Quizz());
}

class Quizz extends StatelessWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBinding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=> Login()),
      ],
    );
  }
}


