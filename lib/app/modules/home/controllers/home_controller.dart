import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:rentcarapp/app/routes/app_pages.dart';

class HomeController extends GetxController {
  var tabIndex = 0.obs;

  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = await auth.currentUser!.uid;

    yield* firestore.collection("user").doc(uid).snapshots();
  }

  void logout() async {
    await FirebaseAuth.instance.signOut();
    Get.offAllNamed(Routes.LOGIN);
  }
}
