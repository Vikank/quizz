import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/material.dart';
import 'package:quizz/screens/home.dart';

class LoginController extends GetxController{

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  final userdata = GetStorage();

  @override
  void onInit(){
    super.onInit();
  }

  void login() async{
    Future<QuerySnapshot> data = FirebaseFirestore.instance
        .collection('users')
        .where('email', isEqualTo: usernameController.text)
        .where('password', isEqualTo: passwordController.text)
        .get();
    QuerySnapshot response = await (data);

    if (response.docs.isNotEmpty) {
      userdata.write('isLogged', true);
      userdata.write('username',usernameController.text);
      Get.offAll(Home());
    } else{
      Get.snackbar("Error", "Please Enter Username & Password",snackPosition: SnackPosition.BOTTOM);
    }
  }

}
