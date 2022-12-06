import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
            },
            child: ClipOval(
              child: Container(
                width: 130,
                height: 130,
                color: Color(0xFFEF233C),
                child: Icon(Icons.logout,
                  size: 45,
                  color: Colors.white,),
              ),
            ),
          ),
        ),
      ),
    );
  }
}