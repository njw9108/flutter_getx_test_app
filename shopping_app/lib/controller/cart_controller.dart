import 'package:get/get.dart';
import 'package:shopping_app/model/product.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  int get count => cartItems.length;

  void addToItem(Product product) {
    cartItems.add(product);
  }
}
