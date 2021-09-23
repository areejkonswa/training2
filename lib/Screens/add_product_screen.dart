import 'package:flutter/material.dart';

class addProduct extends StatefulWidget {
  const addProduct({Key? key}) : super(key: key);

  @override
  _addProductState createState() => _addProductState();
}

class _addProductState extends State<addProduct> {
  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'title',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'orice',
            ),
            readOnly: true,
            //
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'description',
            ),
            readOnly: true,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'imgUrl',
            ),
            readOnly: true,
          ),
        ],
      ),
    );
    return scaffold;
  }
}
