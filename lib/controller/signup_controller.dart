import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:quizz/screens/login.dart';
import '../model_class/signup_detail';
import 'package:firebase_core/firebase_core.dart';

class SignUpController extends GetxController {
  String pass = '';

  UserDetail userDetail = UserDetail(
    emailId: '',
    password: '',
  );

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return 'Provide valid Email';
    }
    return null;
  }
  String? validatePassword(String value) {
    Pattern pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regex = new RegExp(pattern.toString());
    print(value);
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value))
        return 'Enter Valid password A-Z, a-z, number and a symbol';
      else
        return null;
    }
  }
  String? confirmPassword(String value){
    print(value);
    if(pass != value){
      return 'Password not match';
    }
    else{
      return null;
    }
  }
  void save() {
    CollectionReference collectionReference = FirebaseFirestore.instance.collection('users');
    if(userDetail.emailId.isEmpty ||
    userDetail.password.isEmpty
    ) {
      Get.snackbar('Alert', 'Fill all the details');
      print('check');
    }
    else{
      Map<String,dynamic> userdata = {
        'email' : userDetail.emailId,
        'password' : userDetail.password,
      };
      collectionReference.add(userdata);
      Get.offAll(()=> Login());
    }

  }
}
