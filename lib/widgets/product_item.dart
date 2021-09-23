import 'package:todo_list/Screens/product_details.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  // final String price;

  ProductItem(this.id, this.imageUrl, this.title);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .pushNamed(ProductDetails.routeName, arguments: id);
        },
        child: Image.network(
          imageUrl,
        ),
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
      header: GridTileBar(
        backgroundColor: Colors.black54,
        trailing: IconButton(
          icon: Icon(Icons.favorite_border_outlined),
          color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
