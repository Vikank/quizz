import 'package:get/get.dart';

class LoginController extends GetxController{

  RxBool animated = false.obs;

  @override
  void onInit(){
    super.onInit();
  }

  void login(){
    animated.value = !animated.value;
  }

}