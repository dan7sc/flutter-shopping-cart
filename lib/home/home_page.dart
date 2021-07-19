import 'package:class_shopping_cart/modules/cart/cart_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartPage()));
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
