import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'home.dart';
import 'login.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final userdate = GetStorage();

  void initState() {
    // TODO: implement initState
    super.initState();
    userdate.writeIfNull('isLogged', false);
    Future.delayed(Duration.zero,() async{
      checkiflogged();
    });
  }

  void checkiflogged() {
    userdate.read('isLogged') ? Get.offAll(Home()) : Get.offAll(Login());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child:  CircularProgressIndicator()
        ),
      ),
    );
  }
}

