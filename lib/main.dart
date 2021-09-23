import 'package:flutter/material.dart';
import 'package:todo_list/Screens/product_details.dart';
import 'Screens/home_screen.dart';
//import 'Screens/product_details.dart';
import 'package:provider/provider.dart';
import '../Providers/products_provider.dart';
import 'Screens/add_product_screen.dart';
import 'Screens/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => products_data(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.redAccent,
        ),
        home: HomeScreen(),
        routes: {
          ProductDetails.routeName: (ctx) => ProductDetails('title'),
          'add_product': (context) => addProduct(),
          'list': (ctx) => my_products([]),
        },
      ),
    );
  }
}
