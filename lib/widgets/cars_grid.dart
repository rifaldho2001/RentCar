import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
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
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
              boxShadow: [
                BoxShadow(color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 1)],
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Column(
            children: [
              Image.asset(allCars.mobil[i].path),
              Text(allCars.mobil[i].title, style: BasicHeading),
              Text((allCars.mobil[i].harga).toString(), style: SubHeading),
              Text('per hari')
            ],
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
    );
  }
}
