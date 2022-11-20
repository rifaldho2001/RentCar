import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
              child: Text("Login",
              style: TextStyle(
                color: Color(0xFFEF233C),
                fontSize: 28,
                fontWeight:FontWeight.bold
              ),),
            ),
            SizedBox(height: 80),
            TextField(
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
            SizedBox(height: 30),
            TextField(
              controller: controller.passC,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              cursorColor: Colors.black26,
              decoration: InputDecoration(
                  label: Text("Password",
                    style: TextStyle(
                        color: Color(0xFFEF233C),
                    fontWeight: FontWeight.bold
                    ),),
                hintText: "Enter your password",
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
                    Icons.lock_outline_rounded,
                    size: 20,
                    color: Color(0xFFEF233C),
                  ),
                )
            ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {},
                  child: Text("Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFFEF233C),
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ))
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Get.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  controller.login();
                },
                child: Text("Log in"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFEF233C),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),
            ),
            // SizedBox(height: 25),
            // Row(
            //   children: [
            //     Expanded(
            //         child: Container(
            //           margin: EdgeInsets.only(right: 15),
            //           height: 1,
            //           color: Colors.black26,
            //         )
            //     ),
            //     Text(
            //         "or",
            //       style: TextStyle(
            //         color: Colors.black26,
            //         fontSize: 12
            //       ),
            //     ),
            //     Expanded(
            //         child: Container(
            //           margin: EdgeInsets.only(left: 15),
            //           height: 1,
            //           color: Colors.black26,
            //         )
            //     ),
            //   ],
            // ),
            // SizedBox(height: 25),
            // Container(
            //   width: Get.width,
            //   height: 60,
            //   child: ElevatedButton(
            //     onPressed: () {},
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Image.asset("assets/img/google.png"),
            //         SizedBox(width: 5),
            //         Text("Log in with Google",
            //         style: TextStyle(
            //           color: Color(0xFF303030),
            //           fontSize: 14
            //         )),
            //       ],
            //     ),
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Color(0xFFF6F7FA),
            //         padding: EdgeInsets.symmetric(vertical: 15),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(28))
            //     ),
            //   ),
            // ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have any account?",
                style: TextStyle(
                    color: Colors.black38
                ),),
                TextButton(
                    onPressed: () {
                      controller.signup();
                    },
                    child: Text("Sign Up",
                    style: TextStyle(
                      color: Color(0xFFEF233C),
                      fontWeight: FontWeight.bold
                    ),))
              ],
            )
          ],
        ),
      )
    );
  }
}
