import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(right: 40, left: 40, top: 40),
            children: [
              Image.asset(
                "assets/img/512.png",
                height: 100,
                fit: BoxFit.contain,
              ),
              Center(
                child: Text("Sign Up",
                  style: TextStyle(
                      color: Color(0xFFEF233C),
                      fontSize: 28,
                      fontWeight:FontWeight.bold
                  ),),
              ),
              SizedBox(height: 40),
              TextField(
                controller: controller.nameC,
                autocorrect: false,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    label: Text("Full Name",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontWeight: FontWeight.bold
                      ),),
                    hintText: "Full Name",
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
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.emailC,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  label: Text("Email",
                    style: TextStyle(
                        color: Color(0xFFEF233C),
                        fontWeight: FontWeight.bold
                    ),),
                  hintText: "Email",
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
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.passC,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    label: Text("Password",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontWeight: FontWeight.bold
                      ),),
                    hintText: "Password",
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
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined,
                        size: 20,
                        color: Color(0xFFEF233C),
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.repassC,
                autocorrect: false,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                    label: Text("Confirm Password",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontWeight: FontWeight.bold
                      ),),
                    hintText: "Confirm Password",
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
                      padding: EdgeInsets.only(right: 10),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined,
                          size: 20,
                          color: Color(0xFFEF233C),
                        ),
                      ),
                    )
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.phoneC,
                autocorrect: false,
                keyboardType: TextInputType.phone,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  label: Text("Phone",
                    style: TextStyle(
                        color: Color(0xFFEF233C),
                        fontWeight: FontWeight.bold
                    ),),
                  hintText: "Phone",
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
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: Get.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.pickKTP();
                  },
                  child: Text("Pilih KTP",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontSize: 14
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                      side: BorderSide(color: Color(0xFFEF233C))
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: GetBuilder<SignupController>(
                  builder: (c) {
                    if(c.image != null){
                      return Text("KTP telah dipilih");
                    }else{
                      return Text("KTP belum dipilih");
                    };
                  }
                )
              ),
              SizedBox(height: 20),
              Container(
                width: Get.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.register();
                  },
                  child: Text("Register", style: TextStyle(fontSize: 16)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEF233C),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                    style: TextStyle(
                        color: Colors.black38
                    ),),
                  TextButton(
                      onPressed: () {
                        controller.login();
                      },
                      child: Text("Log in",
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
