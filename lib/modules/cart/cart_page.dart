import 'package:class_shopping_cart/shared/models/product_model.dart';
import 'package:class_shopping_cart/state_builder.dart';
import 'package:flutter/material.dart';

import 'cart_controller.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final controller = CartController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: StateBuilder<List<ProductModel>>(
        controller: controller,
        builder: (_, state) {
          if (state.isEmpty) {
            return Center(
              child: Text("OPS! Seu carrinho está vazio"),
            );
          }
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) => ListTile(
              title: Text(state[index].name),
              trailing: Text(state[index].price.toString()),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
