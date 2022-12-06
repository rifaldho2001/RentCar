import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcarapp/app/routes/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();

  void signup() {
    Get.offAllNamed(Routes.SIGNUP);
  }

  login() async {
    if (emailC.text.isNotEmpty && passC.text.isNotEmpty) {
        try{
          UserCredential userCredential = await auth.signInWithEmailAndPassword(
            email: emailC.text,
            password: passC.text,
          );
          if (userCredential.user != null) {
            if (userCredential.user?.uid == "O1UosUvLvQPP7xdqq9t488YrUcM2") {
              Get.offAllNamed(Routes.ADMIN_PAGE);
            } else if (userCredential.user!.emailVerified == true) {
              Get.offAllNamed(Routes.HOME);
            } else {
              Get.defaultDialog(
                  title: "Akun belum diverifikasi",
                  middleText: "Kami telah mengirimkan email kepada anda. "
                      "Silahkan cek untuk verifikasi",
                  backgroundColor: Colors.white,
                  titleStyle: TextStyle(color: Color(0xFFEF233C), fontWeight: FontWeight.bold),
                  middleTextStyle: TextStyle(color: Colors.black38),
                  radius: 28
              );
              await userCredential.user!.sendEmailVerification();
            }
          }
        } on FirebaseAuthException catch (e) {
          if (e.code == 'user-not-found') {
            Get.snackbar("Login Error", "Tidak ditemukan akun untuk email ini");
          } else if (e.code == 'wrong-password') {
            Get.snackbar("Login Error", "Password salah");
          }
        } catch (e) {
          Get.snackbar("Login Error", "Tidak dapat login");
        }
    } else {
      Get.snackbar("Login Error", "Silahkan masukkan email dan password");
    }
  }

  void forgetPassword() {
    Get.offAllNamed(Routes.FORGET_PASSWORD);
  }
}
