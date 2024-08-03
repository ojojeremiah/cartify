import 'package:cartify/model/products.dart';
import 'package:cartify/services/dio_Client.dart';
import 'package:cartify/services/endpoits.dart';

List<Products> products = [];

class ProductService {
  final DioClient dioClient;

  ProductService({required this.dioClient});

  Future<List<Products>> fetchProducts() async {
    try {
      final response = await dioClient.get(Endpoints.allProducts);

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        return data.map((json) => Products.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load products');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    }
  }
}
