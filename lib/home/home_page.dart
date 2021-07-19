import 'package:class_shopping_cart/home/home_controller.dart';
import 'package:class_shopping_cart/modules/cart/cart_page.dart';
import 'package:class_shopping_cart/shared/models/product_model.dart';
import 'package:class_shopping_cart/state_builder.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

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
      body: StateBuilder<List<ProductModel>>(
        controller: controller,
        builder: (_, state) {
          if (state.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) => ListTile(
              title: Text(state[index].name),
              trailing: Text(state[index].price.toString()),
            ),
          );
        },
      ),
    );
  }
}
