import 'package:class_shopping_cart/shared/models/product_model.dart';
import 'package:class_shopping_cart/controller.dart';

class CartController extends Controller<List<ProductModel>> {
  CartController() : super([]);

  get items => null;

  void addItem(ProductModel product) {
    this.items.add(product);
  }
}
