import 'product_model.dart';
import 'package:dio/dio.dart';
class ProductsApi {
  final Dio appDioClient;

  ProductsApi(
    this.appDioClient);
  Future<List<ProductModel>> getProductsData() async {
    List<ProductModel> products = [];

    final result = await appDioClient.get(
      'https://my-json-server.typicode.com/Narek717/for_json/products',
    );
    if (result.data is List) {
      products = result.data.first.map<ProductModel>(
            (e) => ProductModel.fromJson(e),
          )
          .toList();
    }
    return products;
  }
}