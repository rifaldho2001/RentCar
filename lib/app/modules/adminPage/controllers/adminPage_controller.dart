import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as s;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dropdown_plus/dropdown_plus.dart';

class adminPageController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }

  // addData Page
  RxBool isLoading = false.obs;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  s.FirebaseStorage storage = s.FirebaseStorage.instance;

  TextEditingController mobilC = TextEditingController();
  TextEditingController penumpangC = TextEditingController();
  TextEditingController hargaC = TextEditingController();
  DropdownEditingController<String>? jenisC = DropdownEditingController();

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
    if (mobilC.text.isNotEmpty && penumpangC.text.isNotEmpty && hargaC.text.isNotEmpty && jenisC?.value != null) {
      isLoading.value = true;
      try{
        String mobil = mobilC.text;
        File file = File(image!.path);
        String ext = image!.name.split(".").last;

        await storage.ref('mobil/$mobil.$ext').putFile(file);
        String urlMOBIL = await storage.ref('mobil/$mobil.$ext').getDownloadURL();

        firestore.collection("mobil").doc(mobil).set({
          "mobil": mobilC.text,
          "kapasitas" : penumpangC.text,
          "harga" : hargaC.text,
          "jenis" : jenisC?.value,
          "foto": urlMOBIL,
        });
        print("Data telah diupload");
        Get.snackbar("Upload Berhasil", "Berhasil upload data baru");
      } catch (e) {
        Get.snackbar("Terjadi Kesalahan", "Gagal upload data baru");
      }finally {
        isLoading.value = false;
      }
    }else{
      Get.snackbar("Upload Error", "Silahkan isi semua form");
    }
  }
}
