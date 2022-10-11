import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
import 'package:rentcar/screens/profil.dart';
import '../widgets/cars_grid.dart';
import 'histori.dart';

class CarsOverviewScreen extends StatefulWidget {
  @override
  State<CarsOverviewScreen> createState() => _CarsOverviewScreenState();
}

class _CarsOverviewScreenState extends State<CarsOverviewScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(child: Image.asset('assets/256.png', height: 40)),
      ),
      body: IndexedStack(
        index: index,
        children: const [
          CarsGrid(),
          Histori(),
          Profil()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        backgroundColor: Colors.white,
        selectedFontSize: 12,
        unselectedFontSize: 11,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              //backgroundColor: Colors.white,
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.note),
              //backgroundColor: Colors.white,
              label: 'Pemesanan'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              //backgroundColor: Colors.white,
              label: 'Profil'
          ),
        ],
        selectedItemColor: Colors.red,
        onTap: (int newindex) {
          setState(() {
            index = newindex;
          });
        },
      ),
    );
  }
}

