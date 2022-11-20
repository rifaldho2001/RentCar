import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Booking Page",
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}