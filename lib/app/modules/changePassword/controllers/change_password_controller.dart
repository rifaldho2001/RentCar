import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  RxBool isLoading = false.obs;
  TextEditingController currC = TextEditingController();
  TextEditingController newC = TextEditingController();
  TextEditingController renewC = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;

  void changePass() async {
    if(currC.text.isNotEmpty && newC.text.isNotEmpty && renewC.text.isNotEmpty) {
      if (newC.text == renewC.text) {
        isLoading.value = true;
        try {
          String emailUser = auth.currentUser!.email!;

          await auth.signInWithEmailAndPassword(email: emailUser, password: currC.text);

          await auth.currentUser!.updatePassword(newC.text);

          Get.back();

          Get.snackbar("Berhasil!", "Password Anda telah diganti.");

        } on FirebaseAuthException catch (e) {
          if(e.code == "wrong-password") {
            Get.snackbar("Ubah Password Error",
                "Password yang dimasukkan salah. Tidak dapat mengubah password.");
          } else {
            Get.snackbar("Ubah Password Error", "${e.code.toLowerCase()}");
          }
        } catch (e) {
          Get.snackbar("Ubah Password Error", "Tidak dapat mengubah password");
        } finally {
          isLoading.value = false;
        }
      } else {
        Get.snackbar("Ubah Password Error", "Ada perbedaan pada konfirmasi password");
      }
    } else {
      Get.snackbar("Ubah Password Error", "Semua form harus diisi");
    }
  }
}