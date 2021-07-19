import 'package:class_shopping_cart/home/home_controller.dart';
import 'package:class_shopping_cart/modules/cart/cart_page.dart';
import 'package:class_shopping_cart/modules/cart/cart_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  final cartController = CartController();

  @override
  void initState() {
    controller.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CartPage()));
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
    );
  }
}
