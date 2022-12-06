import 'package:get/get.dart';
import 'package:flutter/material.dart';

class adminPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  void uploadData() {
    print("Data telah diupload");
  }
}
