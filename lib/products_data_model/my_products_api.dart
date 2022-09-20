import 'package:dio/dio.dart';
import 'package:online_shop/products_data_model/products_api.dart';

class MyProductsApi {
  static MyProductsApi? _singleton;

  late ProductsApi products;
  Dio appDioClient = Dio();

  factory MyProductsApi() {
    if (_singleton == null) {
      _singleton = MyProductsApi._internal();
    }
    return _singleton!;
  }

  MyProductsApi._internal() {
    // Init subclasses
    products = ProductsApi(appDioClient);
  }
}
