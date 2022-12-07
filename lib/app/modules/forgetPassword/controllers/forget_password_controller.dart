import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import '../../../routes/app_pages.dart';
import '../../login/views/login_view.dart';

class ForgetPasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController emailC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void sendEmail() async {
    try {
      isLoading.value = true;
      await auth.sendPasswordResetEmail(email: emailC.text);
      Get.back();
      Get.snackbar("Success", "Email sent");
      backtoLogin();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error", e.message.toString());
    } finally {
      isLoading.value = false;
    }
  }
  void backtoLogin() {
    Get.offAllNamed(Routes.LOGIN);
  }

} 
