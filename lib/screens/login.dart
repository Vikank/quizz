import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:quizz/controller/login_controller.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final LoginController loginController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Login'),
              SizedBox(
                height: 200,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        controller: loginController.usernameController,
                          decoration : InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.purple,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                                width: 1.0,
                              ),
                            ),
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: TextFormField(
                        controller:  loginController.passwordController,
                        decoration : InputDecoration(
                          focusColor: Colors.white,
                          labelText: "Password",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.purple,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple[600],
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    loginController.login();
                  },
                  child: Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
