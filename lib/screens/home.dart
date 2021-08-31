import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        drawer: NavigationDrawer(),
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
                onPressed: () {},
                child: Text("LOGOUT"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  final HomeController homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.purple,
            child: DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.purple[600],
                      backgroundImage: AssetImage(
                        'images/coding.png',
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          homeController.userdata.read('username'),
                          style: TextStyle(color: Colors.black45),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Color(0xFFE1BEE7),
            height: MediaQuery.of(context).size.height / 1,
            child: Column(
              children: [
                ListTile(
                    leading: new Icon(Icons.home),
                  title: Text('Home'),
                  subtitle: Text('Welcome you'),
                  onTap: (){
                      Get.off(Home());
                    homeController.scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
                ListTile(
                    leading: new Icon(Icons.code),
                  title: Text('Languages'),
                  subtitle: Text('Choose the language'),
                    onTap: (){
                      Get.off(Home());
                      homeController.scaffoldKey.currentState!.openEndDrawer();
                    },
                ),
                ListTile(
                    leading: new Icon(Icons.person),
                  title: Text('Profile'),
                  subtitle: Text('Everything about you'),
                    onTap: (){
                      Get.off(Home());
                      homeController.scaffoldKey.currentState!.openEndDrawer();
                    },
                ),
                ListTile(
                  leading: new Icon(Icons.person),
                  title: Text('Log out'),
                  subtitle: Text('See you again'),
                  onTap: (){
                    homeController.userdata.write('isLogged', false);
                    homeController.userdata.remove('username');
                    Get.off(Login());
                    homeController.scaffoldKey.currentState!.openEndDrawer();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
