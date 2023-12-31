
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sih_team_golf/model/user.dart';

class Product {
  final String productName, description;
  final bool isRawMaterial;
  final String manufacturingAddress,productImage;
  final double rating,weight;
  final double carbonFootPrint;
  final List<Color> colors;
  final List<String> images;
  final double totalCarbon;
  final double carbonOffset;
  final double water;

  Product({
    required this.carbonFootPrint,
    required this.isRawMaterial,
    required this.manufacturingAddress,
    required this.productImage,
    required this.productName,
    required this.description,
    required this.weight,
    this.rating = 4.8,
    required this.colors,
    required this.images,
    required this.totalCarbon,
    required this.carbonOffset,
    required this.water
  });
  
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        carbonFootPrint: json["productDetails"]["carbonFootPrint"].toDouble(),
        isRawMaterial: json["productDetails"]["isRawMaterial"],
        manufacturingAddress: json["productDetails"]["manufacturingAddress"],
        productImage: json["productDetails"]["productImage"],
        productName: json["productDetails"]["productName"],
        description: json["productDetails"]["description"],
        weight: json["productDetails"]["weight"].toDouble(),
        colors: [
          Color(0xFFF6625E),
          Color(0xFF836DB8),
          Color(0xFFDECB9C),
          Colors.white,
        ],
        images: [
          "assets/images/ps4_console_white_1.png",
          "assets/images/ps4_console_white_2.png",
          "assets/images/ps4_console_white_3.png",
          "assets/images/ps4_console_white_4.png",
        ],
      totalCarbon: json["totalCarbon"].toDouble(),
      carbonOffset: json["carbonOffset"].toDouble(),
      water: json["water"].toDouble()
    );
  }

  toJson() {
    return {
      "totalCarbon": totalCarbon,
      "productName": productName,
      "description": description,
      "isRawMaterial": isRawMaterial,
      "weight": weight,
      "carbonFootPrint": carbonFootPrint,
      "manufacturingAddress": manufacturingAddress,
      "productImage": productImage,
      "date": DateTime.now().toString(),
      "uid": UserUID.userUID,
      "carbonOffset" : carbonOffset,
      "water" : water
    };
  }

  factory Product.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return Product(
        carbonFootPrint: data["carbonFootPrint"],
        isRawMaterial: data["isRawMaterial"],
        manufacturingAddress: data["manufacturingAddress"],
        productImage: data["productImage"],
        productName: data["productName"],
        description: data["description"],
        weight: data["weight"].toDouble(),
        carbonOffset: data["carbonOffset"].toDouble(),
        colors: [
          Color(0xFFF6625E),
          Color(0xFF836DB8),
          Color(0xFFDECB9C),
          Colors.white,
        ],
        images: [
          "assets/images/ps4_console_white_1.png",
          "assets/images/ps4_console_white_2.png",
          "assets/images/ps4_console_white_3.png",
          "assets/images/ps4_console_white_4.png",
        ],
        totalCarbon: data["totalCarbon"].toDouble(),
        water: data["water"].toDouble(),
    );
  }

}

Product demoProduct = Product(
  totalCarbon: 22900.4,
  productName: "Tata Nano",
  description: "Ev Car",
  isRawMaterial: false,
  weight: 700.0,
  carbonFootPrint: 120,
  manufacturingAddress: "Gujrat",
  productImage:
      "https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/productImage%2FGL2tpgUlm6Bk1aj7udd5.png?alt=media&token=8c49af2e-c448-4b6d-9ade-756332b8869f",
  images: [
    "assets/images/ps4_console_white_1.png",
    "assets/images/ps4_console_white_2.png",
    "assets/images/ps4_console_white_3.png",
    "assets/images/ps4_console_white_4.png",
  ],
  colors: [
    Color(0xFFF6625E),
    Color(0xFF836DB8),
    Color(0xFFDECB9C),
    Colors.white,
  ],
    carbonOffset: 2.783,
  water: 2030.77
);

// Our demo Products
/*
List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: description,
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: description,
    rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/glap.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description: description,
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/wireless headset.png",
    ],
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Logitech Head",
    price: 20.20,
    description: description,
    rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";


 */