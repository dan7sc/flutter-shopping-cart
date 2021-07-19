import 'package:class_shopping_cart/shared/models/product_model.dart';
import 'package:class_shopping_cart/controller.dart';

class CartController extends Controller<List<ProductModel>> {
  CartController() : super([]);

  void addItem(ProductModel product) {
    final list = state;
    list.add(product);
    update(list);
  }
}
