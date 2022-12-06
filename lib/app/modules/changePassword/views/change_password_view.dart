import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  const ChangePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          child: Image.asset("assets/img/256.png", height: 40,),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Center(
              child: Text(
                "Ubah Password",
                style: TextStyle(
                    fontSize: 24,
                    color: Color(0xFFEF233C),
                    fontWeight: FontWeight.bold),)),
          SizedBox(height: 25,),
          TextField(
            controller: controller.currC,
            autocorrect: false,
            obscureText: true,
            decoration: InputDecoration(
              label: Text("Password saat ini",
                style: TextStyle(
                    color: Color(0xFFEF233C),
                ),),
              border: OutlineInputBorder(),
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
            )
          ),
          SizedBox(height: 25,),
          TextField(
              controller: controller.newC,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Masukkan password yang baru",
                  style: TextStyle(
                    color: Color(0xFFEF233C),
                  ),),
                border: OutlineInputBorder(),
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
              )
          ),
          SizedBox(height: 25,),
          TextField(
              controller: controller.renewC,
              autocorrect: false,
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Masukkan ulang password yang baru",
                  style: TextStyle(
                    color: Color(0xFFEF233C),
                  ),),
                border: OutlineInputBorder(),
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
              )
          ),
          SizedBox(height: 25,),
          Obx(
                  () => ElevatedButton(
                      onPressed: () {
                        if(controller.isLoading.isFalse) {
                          controller.changePass();
                        }
                      },
                      child: Text((controller.isLoading.isFalse) ? "UBAH PASSWORD" : "LOADING..."),
                  ),
          )
        ]
      )
    );
  }
}
