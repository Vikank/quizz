import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizz/controller/signup_controller.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {

  SignUpController signUpController = Get.find();

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              padding: EdgeInsets.all(25),
              width: double.infinity,
              // color: Colors.redAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Create account', style: TextStyle(fontSize: 25)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Enter details and get started'),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) =>signUpController.validateEmail(value!),
                      onChanged: (value) {
                        signUpController.userDetail.emailId = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey[700]),
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: BorderSide(
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) =>signUpController.validatePassword(value!),
                      onChanged: (val){
                        signUpController.pass = val;
                        signUpController.userDetail.password = val;
                      },
                      decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Colors.grey[700]),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value)=> signUpController.confirmPassword(value!),
                      decoration: InputDecoration(
                          labelText: 'Confirm Passsword',
                          labelStyle: TextStyle(color: Colors.grey[700]),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(color: Colors.purple),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              ))),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.deepPurpleAccent,
                    ),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        signUpController.save();

                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Already Have Account ? ',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                        children: [
                          TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 15),
                              recognizer: TapGestureRecognizer()..onTap = () {})
                        ],
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}
