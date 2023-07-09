import 'package:flutter/material.dart';
import 'package:sih_team_golf/utilities/size_config.dart';
import '../../model/Product.dart';
import 'components/body.dart';
import 'components/custom_app_baar.dart';

class ProductDetails extends StatefulWidget {
  final String pid;
  const ProductDetails({super.key, required this.pid});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {


  @override
  void initState() {
    super.initState();

  }

  Product _product = demoProduct;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // final ProductDetailsArguments agrs =
    // ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: _product.rating),
      ),
      body: Body(product: _product),
    );
  }

}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}