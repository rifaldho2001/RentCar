import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../catalog/views/catalog_view.dart';
import 'package:rentcarapp/app/modules/booking/views/booking_view.dart';
import 'package:rentcarapp/app/modules/profile/views/profile_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller){
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              child: Image.asset("assets/img/256.png", height: 40,),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                CatalogView(),
                BookingView(),
                ProfileView(),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Color(0xFFEF233C),
              unselectedItemColor: Colors.black26,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
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
          )
      );
    });
  }
  _bottomNavigationBarItem({IconData? icon, String? label}) {
    return BottomNavigationBarItem(
        icon: Icon(icon),
        label: label
    );
  }
}
