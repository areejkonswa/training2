import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;

  ProductDetails(this.title);
  static const routeName = '/product_detail';
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
