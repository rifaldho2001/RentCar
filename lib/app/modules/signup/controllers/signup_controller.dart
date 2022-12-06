import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcarapp/app/routes/app_pages.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart' as s;

class SignupController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  s.FirebaseStorage storage = s.FirebaseStorage.instance;

  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  TextEditingController repassC = TextEditingController();
  TextEditingController phoneC = TextEditingController();

  final ImagePicker picker = ImagePicker();
  XFile? image;

  void login() {
    Get.offAllNamed(Routes.LOGIN);
  }

  void pickKTP() async {
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

  void register() async {
    if (nameC.text.isNotEmpty && emailC.text.isNotEmpty
        && passC.text.isNotEmpty && repassC.text.isNotEmpty
        && phoneC.text.isNotEmpty) {
      if(passC.text == repassC.text){
        try{
          UserCredential userCredential =
          await auth.createUserWithEmailAndPassword(
              email: emailC.text,
              password: passC.text);

          await userCredential.user!.sendEmailVerification();

          if(userCredential.user != null) {
            String uid = userCredential.user!.uid;
            String nama = nameC.text;
            File file = File(image!.path);
            String ext = image!.name.split(".").last;

            await storage.ref('$nama/ktp.$ext').putFile(file);
            String urlKTP = await storage.ref('$nama/ktp.$ext').getDownloadURL();

            firestore.collection("user").doc(uid).set({
              "nama": nameC.text,
              "email": emailC.text,
              "no_hp": phoneC.text,
              "ktp": urlKTP,
              "uid":  uid,

            });
          }

        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            Get.snackbar("Terjadi Kesalahan", "Password yang digunakan terlalu singkat");
          } else if (e.code == 'email-already-in-use') {
            Get.snackbar("Terjadi Kesalahan", "Email sudah terdaftar");
          }
        } catch (e) {
          Get.snackbar("Terjadi Kesalahan", "Tidak dapat melakukan register");
        }
        Get.defaultDialog(
            title: "Register Berhasil",
            middleText: "Akun telah berhasil didaftarkan",
            confirm: ElevatedButton(
              onPressed: () {
                Get.offAllNamed(Routes.LOGIN);
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFEF233C),
                padding: EdgeInsets.symmetric(vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(28),
                ),
              ),
            ),
            backgroundColor: Colors.white,
            titleStyle: TextStyle(color: Color(0xFFEF233C), fontWeight: FontWeight.bold),
            middleTextStyle: TextStyle(color: Colors.black38),
            radius: 28
        );
      } else {
        Get.snackbar("Sign Up Error", "Ada perbedaan pada konfirmasi password");
      }
    } else {
      Get.snackbar("Sign Up Error", "Tolong isi semua form");
    }
  }
}
