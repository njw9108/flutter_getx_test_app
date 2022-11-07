import 'package:http/http.dart' as http;
import 'package:shopping_app/model/product.dart';

String baseUrl =
    'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline';

class Services {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response = await client.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      var jsonData = response.body;
      return productFromJson(jsonData);
    } else {
      return null;
    }
  }
}
