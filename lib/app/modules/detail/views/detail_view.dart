import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  const DetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Object?>>(
        stream: controller.streamMobil(),
        builder: (context, snapshot) {
          print(snapshot);
          if(snapshot.connectionState == ConnectionState.active) {
            var listAllDocs = snapshot.data!.docs;
          }
          print(snapshot.data);
          return ListView.builder(
              itemBuilder: (context, index) =>
              Padding(
              padding: const EdgeInsets.all(8.0),
                // child: Image.network(
                // "${(listAllDocs[index].data() as Map<String, dynamic>)["foto"]}",
                // fit: BoxFit.fitWidth,
                // )
              )
          );
        },
      )
    );
  }
}
