import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ForgetPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void sendEmail() async {
    try {
      isLoading.value = true;
      await auth.sendPasswordResetEmail(email: emailC.text);
      Get.snackbar("Success", "Email sent");
      Get.back();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message.toString());
    } finally {
      isLoading.value = false;
    }
  }

} 
