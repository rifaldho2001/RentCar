import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rentcarapp/app/modules/home/datadummy/model.dart';
import 'package:rentcarapp/app/modules/home/datadummy/repository.dart';

import '../controllers/home_controller.dart';

class CatalogView extends StatefulWidget {
  const CatalogView({Key? key,}) : super(key: key);

  @override
  _CatalogViewState createState() => _CatalogViewState();
}


class _CatalogViewState extends State<CatalogView> {
  List<Catalog> listCatalog = [];
  Repository repository = Repository();

  getData() async{
    listCatalog = await repository.getData();
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index){
        return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(28)
            ),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              children: [
                Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Image(image: NetworkImage(listCatalog[index].carImage.toString()),
                          fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 10),
                Text(listCatalog[index].carName.toString(),
                style: TextStyle(fontSize: 24),),
                Text(listCatalog[index].carPrice.toString(),
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                Text("per hari",
                style: TextStyle(fontSize: 16)),
                Container(
                  width: 150,
                  child: ElevatedButton(
                      onPressed: (){},
                      child: Text("Detail"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEF233C),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                  ),
                ),
                SizedBox(height: 20,)
              ],
            )
        );
      }, separatorBuilder: (context, index){
        return Divider();
      }, itemCount: listCatalog.length)
    );
  }
}
