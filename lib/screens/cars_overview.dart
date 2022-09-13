import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
import '../widgets/cars_grid.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        elevation: 0,
        title: Text('RentCar', style: TextStyle(
          fontFamily: 'Poppins',
          height: 0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        )),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sewa Mobil',
              style: MainHeading
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarsGrid(),
          )
        ],
      ),
    );
  }
}
