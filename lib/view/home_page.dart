import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/core/get_controller_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _findIndex() {
    GetControllerScreen index=Get.find();
    return index.currentIndex;
  }
 
  
    @override
  Widget build(context) {
   
    return GetBuilder<GetControllerScreen>(builder: (controller) {
      return Scaffold(
      //appBar: AppBar(title: Text('Tracker')),
      body: controller.currentWidget,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
        backgroundColor: Colors.black,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: Get.height / 12,
        iconSize: Get.height / 22,
        activeColor: Colors.white,
        inactiveColor: Colors.white54,
        splashColor: Colors.amber,
        gapLocation: GapLocation.center,
        backgroundColor: Colors.black,
        icons: [Icons.show_chart, Icons.history],
        activeIndex: controller.currentIndex,
        onTap: (int) {
          controller.updateScreenAndIndex(int);
        //  print(c.currentIndex);
        },
      ),
    );
    },);
  }


}
