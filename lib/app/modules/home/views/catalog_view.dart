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
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(
              children: [
                Image(image: NetworkImage(listCatalog[index].carImage.toString()),
                    fit: BoxFit.fill),
                Text(listCatalog[index].carName.toString()),
                Text(listCatalog[index].carPrice.toString()),
                Text(listCatalog[index].carType.toString()),
              ],
            )
        );
      }, separatorBuilder: (context, index){
        return Divider();
      }, itemCount: listCatalog.length)
    );
  }
}
