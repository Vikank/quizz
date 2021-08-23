import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/screens/sign_up.dart';
void main(){
  runApp(Quizz());
}

class Quizz extends StatelessWidget {
  const Quizz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=> SignUp()),
      ],
    );
  }
}


