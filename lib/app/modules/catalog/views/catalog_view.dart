import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/catalog_controller.dart';

class CatalogView extends GetView<CatalogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            "Hello",
            style: TextStyle(fontSize: 24)
          ),
          ListView(
            children: [

            ],
          )
        ],
      ),
    );
  }
}