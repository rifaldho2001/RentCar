import 'package:flutter/material.dart';
import 'package:rentcar/Utilities/Utilities.dart';
import 'package:rentcar/mobil/mobil.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key }) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  DateTimeRange dateRange = DateTimeRange(
      start: DateTime(2022, 10, 12),
      end: DateTime(2022, 10, 15),
  );

  @override
  Widget build(BuildContext context) {
    final start = dateRange.start;
    final end = dateRange.end;
    final difference = dateRange.duration;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Center(child: Image.asset('assets/256.png', height: 40))
        ),
        body: ListView(
          children: [
            SingleChildScrollView(
              child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Ride It"
                          ),
                          Icon(
                            Icons.sms,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/mobil/mobil1.jpg",
                            width: MediaQuery
                                .of(context)
                                .size
                                .width * 0.85,
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Toyota Grand New Avanza",
                                  style: BasicHeading),
                              Text("Rp. 500.000,- per hari"),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceBetween,
                                  children: [
                                    Icon(
                                        Icons.car_rental),
                                    Text("Automatic")]),

                              SizedBox(
                                height: 10,
                              ),
                              Text("Ahmad Iqbal"),
                              Text("Balikpapan"),
                              SizedBox(
                                height: 10,
                              ),

                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width * 0.85,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text("Sewa per hari"),
                                        Text("Rp. 500.000"),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text("Sewa 7 hari"),
                                        Text("Rp. 2.700.000"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 40),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                  elevation: 5,
                                  padding: EdgeInsets.all(12),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: Color.fromARGB(255, 255, 0, 0)),
                              child: Text('${start.year}/${start.month}/${start.day}'),
                              onPressed: pickDateRange,
                            )
                        ),
                        SizedBox(
                            width: 12,
                        ),
                        Expanded(
                            child: ElevatedButton(
                              style: TextButton.styleFrom(
                                  elevation: 5,
                                  padding: EdgeInsets.all(12),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16)),
                                  backgroundColor: Color.fromARGB(255, 255, 0, 0)),
                              child: Text('${end.year}/${end.month}/${end.day}'),
                              onPressed: pickDateRange,
                            )
                        )
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Sewa selama ${difference.inDays} hari'
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 14),
                      width: double.infinity,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              elevation: 5,
                              padding: EdgeInsets.all(12),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              backgroundColor: Color.fromARGB(255, 255, 0, 0)),
                          onPressed: () {},
                          child: Text(
                            "Pesan",
                            style: TextStyle(
                                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                          )),)
                  ]),
            )
          ],
        )
    );
  }

  Future pickDateRange() async{
    DateTimeRange? newDateRange = await showDateRangePicker(
        context: context,
        initialDateRange: dateRange,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
    );

    if (newDateRange == null) return;

    setState(() => dateRange = newDateRange);
  }
}