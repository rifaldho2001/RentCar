import 'package:flutter/material.dart';

class Catalog {
  final Image carImage;
  final String id;
  final String carName;
  final int carPrice;
  final bool carType;

  const Catalog({
    required this.carImage,
    required this.id,
    required this.carName,
    required this.carPrice,
    required this.carType,
  });

  factory Catalog.fromJson(Map<String, dynamic> json) {
    return Catalog(
      carImage: json['carImage'],
      id: json['id'],
      carName: json['carName'],
      carPrice: json['carPrice'],
      carType: json['carType']
    );
  }
}