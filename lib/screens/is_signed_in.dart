import 'package:get/get.dart';
import '../controller/login_controller.dart';
import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../screens/home.dart';

class IsSignedIn extends GetWidget<LoginController>{
  @override
  Widget build(BuildContext context){
    return Obx((){
      return Get.find<LoginController>().user! = null ? Home() : Login();
    });
  }
}