// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rentcarapp/app/modules/home/views/booking_view.dart';
import 'package:rentcarapp/app/modules/home/views/catalog_view.dart';
import 'package:rentcarapp/app/modules/home/views/profile_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {

  HomeController BotNavBarController = Get.put(HomeController());

  HomeView({Key? key}) : super(key: key);

  final screen = [
    CatalogView(),
    BookingView(),
    ProfileView(),
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
                  label: "Home",
                  icon: Icons.home_rounded,
                ),
                _bottomNavigationBarItem(
                  label: "Booking",
                  icon: Icons.note_rounded,
                ),
                _bottomNavigationBarItem(
                  label: "Profile",
                  icon: Icons.person_rounded,
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