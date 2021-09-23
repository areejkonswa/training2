// import 'package:todo_list/Screens/add_product_screen.dart';
// import 'package:todo_list/Screens/main_list_screen.dart';
import 'package:provider/provider.dart';
import '../widgets/product_item.dart';
import 'package:flutter/material.dart';
import '../Providers/products_provider.dart';
// ignore: unused_import
import './favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  // ignore: non_constant_identifier_names

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late List<Map<String, dynamic>> _pages;

  void _changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    _pages = [
      {
        'title': 'My shop',
        'page': HomeScreen(),
      },
      {
        'title': 'favorites',
        'page': favorite_screen(),
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var myProductsList = Provider.of<products_data>(context).essential;
    return Scaffold(
      appBar:
          AppBar(title: Text(_pages[_currentIndex]['title']), actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 1),
          child: GestureDetector(
            onTap: () =>
                Navigator.of(context).pushNamed('add_product', arguments: {}),
            child: Icon(Icons.production_quantity_limits),
          ),
        ),
      ]),
      body: GridView.builder(
        itemCount: myProductsList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemBuilder: (ctx, i) => ProductItem(myProductsList[i].id,
            myProductsList[i].imgUrl, myProductsList[i].title),
        padding: const EdgeInsets.all(10.0),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changePage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          )
        ],
      ),
    );
  }
}
