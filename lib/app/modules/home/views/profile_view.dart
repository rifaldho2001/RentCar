import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rentcarapp/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class ProfileView extends GetView<HomeController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder <DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator(),);
          }
          if(snap.hasData) {
            Map<String, dynamic> user = snap.data!.data()!;
            return ListView(
              padding: EdgeInsets.all(20),
              children: [
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipOval(
                      child: Container(
                        width: 120,
                        height: 120,
                        child: Image.network(
                          "https://ui-avatars.com/api/?name=${user['email']}",
                          fit: BoxFit.cover,),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(
                  "${user['nama'].toString().toUpperCase()}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "${user['email']}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 30,),
                ListTile(
                  onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
                  leading: Icon(Icons.vpn_key),
                  iconColor: Color(0xFFEF233C),
                  title: Text("Ubah password"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20,),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFEF233C)),
                    borderRadius: BorderRadius.circular(28)
                  ),
                ),
                SizedBox(height: 8,),
                ListTile(
                  onTap: () async {
                    await FirebaseAuth.instance.signOut();
                    Get.offAllNamed(Routes.LOGIN);
                  },
                  leading: Icon(Icons.logout),
                  iconColor: Color(0xFFEF233C),
                  title: Text("Logout"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20,),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xFFEF233C)),
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: Text("Tidak dapat memuat data user.",),
            );
          }
        },
      ),
    );
  }
}