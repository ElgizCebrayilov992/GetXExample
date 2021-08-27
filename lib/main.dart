import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/view/home_page.dart';

import 'core/get_controller_screen.dart';

void main() {
Get.put(GetControllerScreen());
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black)
      ),
      title: 'Weight Tracker',
      home: Home(),
    ),
  );
}
