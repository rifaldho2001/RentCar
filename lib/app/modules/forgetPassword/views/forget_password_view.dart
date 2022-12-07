import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_password_controller.dart';

class ForgetPasswordView extends GetView<ForgetPasswordController> {
  const ForgetPasswordView({Key? key}) : super(key: key);
  
  get labelText => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(right: 40, left: 40, top: 150),
          children: [
            Image.asset(
              "assets/img/512.png",
              height: 100,
              fit: BoxFit.contain,
            ),
              Center(
              child: Text("RESET PASSWORD",
              style: TextStyle(
                color: Color(0xFFEF233C),
                fontSize: 28,
                fontWeight:FontWeight.bold
              ),),
            ),
            SizedBox(height: 90),
            TextField(
              autocorrect: false,
              controller: controller.emailC,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Colors.black26,
              decoration: InputDecoration(
                  label: Text("Email",
                  style: TextStyle(
                    color: Color(0xFFEF233C),
                    fontWeight: FontWeight.bold
                  ),),
                  hintText: "Enter your email",
                  hintStyle: TextStyle(fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        15,
                        20,
                        15
                    ),
                    child: Icon(
                      Icons.mail_outline_rounded,
                      size: 20,
                      color: Color(0xFFEF233C),
                    ),
                  )
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("SEND EMAIL", style: TextStyle(fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEF233C),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
