import 'package:cart_app/model/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(const Duration(seconds: 2));

    var productData = [
      Product(
        id: 1,
        price: 30,
        productName: 'Mouse',
        productDescription: 'some description about product',
      ),
      Product(
        id: 2,
        price: 40,
        productName: 'Keyboard',
        productDescription: 'some description about product',
      ),
      Product(
        id: 3,
        price: 620,
        productName: 'Monitor',
        productDescription: 'some description about product',
      ),
      Product(
        id: 4,
        price: 80,
        productName: 'Ram',
        productDescription: 'some description about product',
      ),
      Product(
        id: 5,
        price: 820,
        productName: 'Computer',
        productDescription: 'some description about product',
      ),
    ];
    products.assignAll(productData);
  }
}
