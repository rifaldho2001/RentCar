import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
import 'package:rentcar/widgets/cars_detail.dart';
import '../mobil/mobil.dart';

class CarsGrid extends StatelessWidget {
  const CarsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.mobil.length,
      itemBuilder: (context, i) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 1)],
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Image.asset(allCars.mobil[i].path),
                    Text(allCars.mobil[i].title, style: BasicHeading),
                    Text((allCars.mobil[i].harga).toString(), style: SubHeading),
                    Text('per hari'),
                    Text(allCars.mobil[i].gearbox),
                    ElevatedButton(
                      style: TextButton.styleFrom(
                          elevation: 0,
                          padding: EdgeInsets.symmetric(horizontal: 45),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                          ),
                          backgroundColor: Color.fromARGB(255, 231, 44, 44)
                      ),
                        child: const Text('Detail',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                            )),
                        onPressed: () {_navigateToNextScreen(context);})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
    );
  }
}

void _navigateToNextScreen(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Detail()));
}
