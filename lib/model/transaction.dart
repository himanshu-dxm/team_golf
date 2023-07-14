
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sih_team_golf/model/user.dart';

class TransactionData {
  final String productName, description;
  final String manufacturingAddress,productImage;
  final double carbonFootPrint;
  final double weight,totalCarbon;
  final String date;
  final String uid;
  final double carbonOffset,water;

  TransactionData({
    required this.carbonFootPrint,
    required this.manufacturingAddress,
    required this.productImage,
    required this.productName,
    required this.description,
    required this.weight,
    required this.totalCarbon,
    required this.date,
    required this.uid,
    required this.carbonOffset,
    required this.water
  });

  factory TransactionData.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return TransactionData(
        carbonFootPrint: data["carbonFootPrint"],
        manufacturingAddress: data["manufacturingAddress"],
        productImage: data["productImage"],
        productName: data["productName"],
        description: data["description"],
        weight: data["weight"],
        totalCarbon: data["totalCarbon"],
      date: data["data"],
      uid: data["uid"],
      carbonOffset: data["carbonOffset"],
      water: data["water"]
    );
  }

  toJson() {
    return {
      "totalCarbon": totalCarbon,
      "productName": productName,
      "description": description,
      "weight": weight,
      "carbonFootPrint": carbonFootPrint,
      "manufacturingAddress": manufacturingAddress,
      "productImage": productImage,
      "date": DateTime.now().toString(),
      "carbonOffset" : carbonOffset,
      "water": water
    };
  }

  // factory TransactionData.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document) {
  //   final data = document.data()!;
  //   return TransactionData(
  //       carbonFootPrint: data["carbonFootPrint"],
  //       manufacturingAddress: data["manufacturingAddress"],
  //       productImage: data["productImage"],
  //       productName: data["productName"],
  //       description: data["description"],
  //       weight: data["weight"],
  //       totalCarbon: data["totalCarbon"],
  //       date: data["date"]
  //   );
  // }

}

TransactionData demoTransaction = TransactionData(
  carbonOffset: 2.83,
  water: 2030.77,
  totalCarbon: 22900.4,
  productName: "Tata Nano",
  description: "Ev Car",
  weight: 700,
  carbonFootPrint: 120,
  manufacturingAddress: "Gujrat",
  productImage:
  "https://firebasestorage.googleapis.com/v0/b/carbon-footprint-monitor.appspot.com/o/productImage%2FGL2tpgUlm6Bk1aj7udd5.png?alt=media&token=8c49af2e-c448-4b6d-9ade-756332b8869f",
  date: DateTime.now().toString(),
  uid: UserUID.userUID,
);

// Our demo Transactions
/*
List<Transaction> demoTransactions = [
  Transaction(
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
  Transaction(
    id: 2,
    images: [
      "assets/images/Image Popular Transaction 2.png",
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
  Transaction(
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
  Transaction(
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