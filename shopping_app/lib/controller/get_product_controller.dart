import 'package:get/get.dart';
import 'package:shopping_app/data/services.dart';
import 'package:shopping_app/model/product.dart';

class GetProductController extends GetxController {
  var productList = <Product>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    isLoading(true);
    var products = await Services.fetchProducts();
    if (products != null) {
      productList.value = products;
    }
    isLoading(false);
  }
}
