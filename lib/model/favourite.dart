import 'package:cartify/model/products.dart';

class FavouriteModel {
  Products? product;
  // final int totalPrice;

  FavouriteModel({required this.product});

  Map<String, dynamic> toJson() {
    return {
      // 'totalPrice': totalPrice,
      'product': product?.toJson(),
    };
  }

  factory FavouriteModel.fromJson(Map<String, dynamic>? json) {
    return FavouriteModel(
      // totalPrice: json['totalPrice'],
      product: json?['product'],
    );
  }
}
