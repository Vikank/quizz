import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz/controller/home_controller.dart';
import 'package:quizz/screens/login.dart';

class Home extends StatelessWidget {
  HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: homeController.scaffoldKey,
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Color(0xFF8E24AA),
                      child: Icon(
                        Icons.quiz_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu_open_outlined),
            onPressed: () {
              print('tapped on navigation icon');
              homeController.scaffoldKey.currentState!.openDrawer();
            },
          ),
          backgroundColor: Colors.purple[600],
          title: Text("Quizz"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "USER DATA",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                "NAME : ${homeController.userdata.read('username')}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              RaisedButton(
                onPressed: () {
                  homeController.userdata.write('isLogged', false);
                  homeController.userdata.remove('username');
                  Get.offAll(()=> Login());
                },
                child: Text("LOGOUT"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
