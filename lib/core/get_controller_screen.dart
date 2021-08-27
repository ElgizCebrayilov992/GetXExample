import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial/view/graph_view.dart';
import 'package:getx_tutorial/view/history_view.dart';

class GetControllerScreen extends GetxController {
  int currentIndex = 0;
  Widget currentWidget = GraphScrenn();

  updateScreenAndIndex(int i) {
    print('Girdi $i');

    currentWidget=(i==0)?GraphScrenn():HistoryScreen();
    currentIndex=i;
    update();
    
  }
}
