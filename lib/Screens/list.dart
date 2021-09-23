import 'package:flutter/material.dart';
import 'package:todo_list/Providers/products_provider.dart';
import 'package:provider/provider.dart';
import '../Widgets/product_list_view.dart';
import 'add_product_screen.dart';

class my_products extends StatelessWidget {
  final List<Product> myProductsList;
  var products;
  my_products(this.myProductsList, {Key? key}) : super(key: key);
  static const routeName = '/main_list_screen';
  @override
  Widget build(BuildContext context) {
    var products = Provider.of<products_data>(context).essential;
    return Scaffold(
      appBar: AppBar(
        title: Text('My Products'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => addProduct()),
                );
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: ListView.separated(
          itemBuilder: (ctx, index) => MyListView(
                products[index].id,
                products[index].title,
                products[index].imgUrl,
              ),
          separatorBuilder: (ctx, index) => Divider(
                thickness: 2,
                height: 0,
              ),
          itemCount: products.length),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Navigator.push(
      //     context,
      //     MaterialPageRoute<void>(
      //       builder: (BuildContext context) => const addProduct(),
      //     ),
      //   ),
      //   child: Icon(
      //     Icons.add,
      //     color: Colors.deepPurple[600],
      //   ),
      // ),
    );
  }
}
