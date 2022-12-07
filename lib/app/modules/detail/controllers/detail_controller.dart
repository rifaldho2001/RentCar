import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

    Future<QuerySnapshot<Object?>> getMobil() async{
      CollectionReference mobil = firestore.collection("mobil");

      return mobil.get();
    }

    Stream<QuerySnapshot<Object?>> streamMobil() {
      CollectionReference mobil = firestore.collection("mobil");
      return mobil.snapshots();
    }
  }
