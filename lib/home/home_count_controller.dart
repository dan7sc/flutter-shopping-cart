import 'package:class_shopping_cart/controller.dart';

class Ob {
  String name;
  String number;

  Ob({this.name = "", this.number = ""});
}

class HomeCountController extends Controller<Ob> {
  HomeCountController() : super(Ob());

  void setName(String name) {
    var actual = state;
    actual.name = name;
    update(actual);
  }

  void setNumber(String number) {
    var actual = state;
    actual.number = number;
    update(actual);
  }
}
