import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
import '../widgets/cars_grid.dart';

class CarsOverviewScreen extends StatefulWidget {
  @override
  State<CarsOverviewScreen> createState() => _CarsOverviewScreenState();
}

class _CarsOverviewScreenState extends State<CarsOverviewScreen> {

  int _currentIndex = 0;

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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Sewa Mobil',
                style: MainHeading
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: CarsGrid(),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
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
        ],
        selectedItemColor: Colors.red,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
