import 'package:cartify/services/dio_exception.dart';
import 'package:cartify/services/products_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductsRepository {
  final ProductService productsService;

  ProductsRepository({required this.productsService});

  Future<void> products() async {
    try {
      await productsService.fetchProducts();
      // if (response.statusCode == 200) {
      //   return;
      // }
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      Fluttertoast.showToast(
        msg: "Request Failed: $errorMessage",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14,
      );
      throw errorMessage;
    }
  }
}
