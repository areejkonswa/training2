//import 'dart:js_util';
import 'package:flutter/material.dart';
import '../Providers/products_provider.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class MyListView extends StatelessWidget {
  final String id;
  final String title;
  final String imgUrl;
  const MyListView(this.title, this.imgUrl, this.id, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      child: Container(
        color: Colors.white,
        child: ListTile(
          title: Text(title),
          leading: CircleAvatar(
            radius: 30,
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(imgUrl),
              ),
            ),
          ),
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Edit',
          color: Colors.deepPurple[600],
          icon: Icons.edit,
          onTap: () => print('1'),
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: () => Provider.of<products_data>(context, listen: false)
              .removeProduct(id),
        ),
      ],
    );
  }
}
