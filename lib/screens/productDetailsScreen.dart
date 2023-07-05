import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String pid;
  const ProductDetails({super.key, required this.pid});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Product :${widget.pid}'),
      ),
    );
  }
}
