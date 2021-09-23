// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';
//import '../screens/home_screen.dart/';
// import 'package:provider/provider.dart';
// import '../widgets/product_list_view.dart';

class Product {
  String id, title, description, imgUrl;
  double price;
  bool isFav;

  Product(
      {required this.description,
      required this.id,
      required this.imgUrl,
      this.isFav = false,
      required this.price,
      required this.title});
}

// ignore: camel_case_types
class products_data with ChangeNotifier {
  List<Product> products = [];
  Product findById(String id) =>
      products.firstWhere((element) => element.id == id);
  List<Product> get essential => [...myProductsList];

  final List<Product> myProductsList = [
    Product(
      id: '1',
      title: 'Sneakers',
      price: 150,
      description: 'Any Description',
      imgUrl:
          'https://media.istockphoto.com/photos/running-shoes-picture-id1249496770?b=1&k=6&m=1249496770&s=170667a&w=0&h=9uttCAghGWpQC9aNxH7B50vsahNUHFL49IpI7J0Mxug=',
      isFav: false,
    ),
    Product(
      id: '2',
      title: 'Jeans Shirt',
      price: 100,
      description: 'Any Description',
      imgUrl:
          'https://ae01.alicdn.com/kf/HTB1w.oNPXXXXXbVXVXXq6xXFXXX9/100-Cotton-Gradient-Blue-Jeans-shirt-men-fashion-Unique-personality-denim-shirt-men-Spring-long-shirts.jpg_q50.jpg',
      isFav: true,
    ),
    Product(
      id: '3',
      title: 'Black Shirt',
      price: 150,
      description: 'Any Description',
      imgUrl:
          'https://imgprd19.hobbylobby.com/2/f2/52/2f25245d02f23a9c1dbd4761822a3d0ea14102cd/700Wx700H-462804-0320.jpg',
      isFav: false,
    ),
  ];
  void removeProduct(String id) {
    myProductsList.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
