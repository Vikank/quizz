import 'package:get/get.dart';
import 'package:quizz/controller/home_controller.dart';
import 'package:quizz/controller/login_controller.dart';
import 'package:quizz/controller/signup_controller.dart';

class ControllerBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignUpController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => HomeController());

  }
}