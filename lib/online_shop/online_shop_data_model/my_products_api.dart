import 'package:dio/dio.dart';
import 'package:online_shop/online_shop/online_shop_data_model/products_api.dart';

class MyProductsApi {
  static MyProductsApi? _singleton;

  late ProductsApi products;
  Dio appDioClient = Dio();

  factory MyProductsApi() {
    _singleton ??= MyProductsApi._internal();
    return _singleton!;
  }
  MyProductsApi._internal() {
    products = ProductsApi(appDioClient);
  }
}
