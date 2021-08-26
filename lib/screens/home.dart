import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/controller/home_controller.dart';
import 'package:quizz/screens/login.dart';

class Home extends StatelessWidget {

  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Shared Preferences"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "USER DATA",
              style: TextStyle(fontSize: 30, fontWeight:  FontWeight.bold),
            ),
            Text(
              "NAME : ${homeController.userdata.read('username')}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            RaisedButton(
              onPressed: (){
                homeController.userdata.write('isLogged', false);
                homeController.userdata.remove('username');
                Get.offAll(Login());
              },
              child: Text("LOGOUT"),
            )
          ],
        ),
      ),
    );
  }
}
