import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rentcarapp/app/modules/adminPage/views/addData_view.dart';
import 'package:rentcarapp/app/modules/adminPage/views/confirmOrder_view.dart';
import 'package:rentcarapp/app/modules/adminPage/views/logout_view.dart';

import '../controllers/adminPage_controller.dart';

// ignore: must_be_immutable
class adminPageView extends StatelessWidget {

  adminPageController BotNavBarController = Get.put(adminPageController());

  adminPageView({Key? key}) : super(key: key);

  final screen = [
    addDataView(),
    confirmOrderView(),
    LogoutView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            child: Image.asset("assets/img/256.png", height: 40,),
          ),
          centerTitle: true,
        ),
        body: Obx(() {
          return IndexedStack(
            index: BotNavBarController.tabIndex.value,
            children: screen,
          );
        }),
        bottomNavigationBar: Obx(() {
          return BottomNavigationBar(
              selectedItemColor: Color(0xFFEF233C),
              unselectedItemColor: Colors.black26,
              onTap: (index) {
                BotNavBarController.changeTabIndex(index);
              },
              currentIndex: BotNavBarController.tabIndex.value,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: [
                _bottomNavigationBarItem(
                  label: "Add Data",
                  icon: Icons.file_upload_rounded,
                ),
                _bottomNavigationBarItem(
                  label: "Order",
                  icon: Icons.note,
                ),
                _bottomNavigationBarItem(
                  label: "Log Out",
                  icon: Icons.logout_rounded,
                ),
              ]
          );
        })
    );
  }

  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
        icon: Icon(icon),
        label: label
    );
  }
}