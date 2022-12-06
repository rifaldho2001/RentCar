import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_storage/firebase_storage.dart' as s;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class adminPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  // addData Page
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  s.FirebaseStorage storage = s.FirebaseStorage.instance;

  TextEditingController mobilC = TextEditingController();
  TextEditingController penumpangC = TextEditingController();

  final ImagePicker picker = ImagePicker();
  XFile? image;

  void pickMobil() async {
    // Pick an image
    image = await picker.pickImage(source: ImageSource.gallery);
    if(image != null) {
      print(image!.name);
      print(image!.name.split(".").last);
      print(image!.path);
    } else {
      print(image);
    }
    update();
  }

  void uploadData() async {
    if (mobilC.text.isNotEmpty && penumpangC.text.isNotEmpty) {
      print("Data telah diupload");
    }else{
      Get.snackbar("Upload Error", "Silahkan isi semua form");
    }
  }
}
