import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rentcarapp/app/routes/app_pages.dart';

class LoginController extends GetxController {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  void signup() {
    Get.offAllNamed(Routes.SIGNUP);
  }

  login() async {
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.snackbar("Login Error", "Please enter email and password");
    }
  }
}
