import 'package:flutter/material.dart';

class Product {
  final String productName, description;
  final bool isRawMaterial;
  final String weight,manufacturingAddress,productImage;
  final double carbonFootPrint,rating;
  final List<Color> colors;
  final List<String> images;

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
  });
}

Product demoProduct = Product(
  productName: "Tata Nano",
  description: "Ev Car",
  isRawMaterial: false,
  weight: "700",
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