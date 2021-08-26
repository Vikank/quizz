import 'package:get/get.dart';

class SignUpController extends GetxController {
  String pass = '';
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
}
