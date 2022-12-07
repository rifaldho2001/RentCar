import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentcarapp/app/modules/home/controllers/home_controller.dart';

import 'package:rentcarapp/app/modules/home/datadummy/model.dart';
import 'package:rentcarapp/app/modules/home/datadummy/repository.dart';

class CatalogView extends GetView<HomeController>{
  const CatalogView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.streamMobil(),
        builder: (context, snapshot) {
          print(snapshot);
          if(snapshot.connectionState == ConnectionState.active) {
            var listAllDocs = snapshot.data!.docs;
            print(snapshot.data);
            return ListView.builder(
                itemCount: listAllDocs.length,
                itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Colors.redAccent,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(28)
                        ),
                        child:
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                          height: 250,
                          width: Get.width,
                          child: Column(
                                children: [
                                  Text(
                                    "${(listAllDocs[index].data() as Map<String, dynamic>)["nama"]}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 200,
                                        padding: EdgeInsets.only(top: 30, right: 20, bottom: 20),
                                        child: Image.network(
                                          "${(listAllDocs[index].data() as Map<String, dynamic>)["foto"]}",
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          SizedBox(height: 50),
                                          Row(
                                            children: [
                                              Icon(Icons.event_seat_rounded, size: 30),
                                              SizedBox(width: 5),
                                              Text("${(listAllDocs[index].data() as Map<String, dynamic>)["kapasitas"]}",
                                              style: TextStyle(fontSize: 18),),
                                              SizedBox(width: 10),
                                              Icon(Icons.car_rental_sharp, size: 30),
                                              SizedBox(width: 5),
                                              Text("${(listAllDocs[index].data() as Map<String, dynamic>)["jenis"]}",
                                                style: TextStyle(fontSize: 16),),
                                            ],
                                          ),
                                          SizedBox(height: 20),
                                          ElevatedButton(
                                            onPressed: () {
                                              controller.detail();
                                            },
                                            child: Text("Detail"),
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Color(0xFFEF233C),
                                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(28),
                                              ),
                                            ),)
                                        ],
                                      )
                                    ],
                                  )
                                ],
                          ),
                        ),
                      ),
                    )
            );
          }
          return Center(child: CircularProgressIndicator(),);
        }
      ),
    );
  }
}
