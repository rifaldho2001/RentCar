import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dropdown_search/dropdown_search.dart';
import '../controllers/adminPage_controller.dart';

class addDataView extends GetView<adminPageController> {
  const addDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.only(right: 40, left: 40, top: 50),
            children: [
              TextField(
                controller: controller.mobilC,
                autocorrect: false,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  label: Text("Nama Mobil",
                    style: TextStyle(
                        color: Color(0xFFEF233C),
                        fontWeight: FontWeight.bold
                    ),),
                  hintText: "Nama Mobil",
                  hintStyle: TextStyle(fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: controller.penumpangC,
                autocorrect: false,
                keyboardType: TextInputType.number,
                cursorColor: Colors.black26,
                decoration: InputDecoration(
                  label: Text("Kapasitas Penumpang",
                    style: TextStyle(
                        color: Color(0xFFEF233C),
                        fontWeight: FontWeight.bold
                    ),),
                  hintText: "Kapasitas Penumpang",
                  hintStyle: TextStyle(fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                    borderSide: BorderSide(color: Color(0xFFEF233C)),
                    gapPadding: 10,
                  ),
                ),
              ),
              SizedBox(height: 20),
              DropdownSearch<String>(
                popupProps: PopupProps.menu(
                  showSelectedItems: true,
                ),
                clearButtonProps: ClearButtonProps(isVisible: true),
                items: ["Automatic", "Manual"],
                dropdownDecoratorProps: DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    label: Text("Jenis Mobil",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontWeight: FontWeight.bold
                      ),),
                    hintText: "Pilih jenis mobil",
                    hintStyle: TextStyle(fontSize: 14),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Color(0xFFEF233C)),
                      gapPadding: 10,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28),
                      borderSide: BorderSide(color: Color(0xFFEF233C)),
                      gapPadding: 10,
                    ),
                  ),
                ),
                onChanged: print,
              ),
              SizedBox(height: 20),
              Container(
                width: Get.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.pickMobil();
                  },
                  child: Text("Import Foto Mobil",
                      style: TextStyle(
                          color: Color(0xFFEF233C),
                          fontSize: 14
                      )),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28)),
                      side: BorderSide(color: Color(0xFFEF233C))
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  alignment: Alignment.center,
                  child: GetBuilder<adminPageController>(
                      builder: (c) {
                        if(c.image != null){
                          return Text("Foto mobil telah dipilih");
                        }else{
                          return Text("Silahkan pilih foto mobil");
                        };
                      }
                  )
              ),
              SizedBox(height: 20),
              Container(
                width: Get.width,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    controller.uploadData();
                  },
                  child: Text("Upload Data", style: TextStyle(fontSize: 14)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEF233C),
                    padding: EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        )
    );
  }
}