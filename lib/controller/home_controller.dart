import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController{

  final userdata = GetStorage();
  var scaffoldKey = GlobalKey<ScaffoldState>();

}