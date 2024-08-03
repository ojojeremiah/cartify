import 'dart:convert';
import 'dart:developer';
import 'package:cartify/model/products.dart';
import 'package:cartify/services/products_service.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  static final StorageService _service = StorageService._internal();
  StorageService._internal();
  factory StorageService() => _service;

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<int?> readIntegerFromSecureStorage(String key) async {
    try {
      String? stringValue = await _service._storage.read(key: key);
      if (stringValue != null) {
        return int.tryParse(stringValue);
      }
    } catch (e) {
      print('Error reading integer from secure storage: $e');
    }
    return null;
  }

  Future<double?> readDoubleFromSecureStorage(String key) async {
    try {
      String? stringValue = await _service._storage.read(key: key);
      if (stringValue != null) {
        return double.tryParse(stringValue);
      }
    } catch (e) {
      print('Error reading integer from secure storage: $e');
    }
    return null;
  }

  Future<Rating?> readRatingFromSecureStorage(String key) async {
    try {
      String? stringValue = await _service._storage.read(key: key);
      if (stringValue != null) {
        final Map<String, dynamic> json = jsonDecode(stringValue);
        return Rating.fromJson(json);
      }
    } catch (e) {
      print('Error reading integer from secure storage: $e');
    }
    return null;
  }

  // Future<void> setAuthenticated(
  //   String? token,
  //   UserModel user,
  // ) async {
  //   if (token == null) {
  //     if ((await _manager._storage.read(key: "token")) == null) {
  //       throw Exception(
  //           "You cannot pass until token when there's no token previously persisted.");
  //     }
  //   }
  //   if (token != null) {
  //     await _manager._storage.write(key: "token", value: token);
  //     await StorageService().saveHasAuthenticatedBefore(true);
  //   }
  //   await saveUserDetails(user);
  // }

  // Future<void> savedProducts(Products products) async {
  //   final Map<String, dynamic> productJson = products.toJson();
  //   final String productJsonString = jsonEncode(productJson);

  //   // fetch existing cart
  //   List? cart =
  //       await _service._storage.read(key: 'cart');

  //       if (cart != null) {
  //         cart.add(productJsonString)
  //         await _service._storage.write(key: 'cart', value: cart)
  //       }

  //   await _service._storage
  //       .write(key: 'cart', value: productJsonString);
  // }

  // Future<void> saveRatings(Rating rates) async {
  //   await _service._storage.write(key: 'Rate', value: "${rates.rate}");
  //   await _service._storage.write(key: 'Count', value: "${rates.count}");
  // }

  // Future getProducts() async {
  //   // final List product = [
  //   //   Products(
  //   //       id: await readIntegerFromSecureStorage('Id'),
  //   //       title: await _service._storage.read(key: 'Title'),
  //   //       price: await readDoubleFromSecureStorage('Price'),
  //   //       description: await _service._storage.read(key: 'Description'),
  //   //       category: await _service._storage.read(key: 'Category'),
  //   //       image: await _service._storage.read(key: 'Image'),
  //   //       rating: await readRatingFromSecureStorage('Rating'))
  //   // ];
  //   // return product;
  //   var productData;
  //   String? productJsonString =
  //       await _service._storage.read(key: 'product_key');
  //   if (productJsonString != null) {
  //     final Map<String, dynamic> productJson = jsonDecode(productJsonString);
  //     Products product = Products.fromJson(productJson);
  //     productData = product;
  //   }
  //   return productData;
  // }

  // Future<Rating> getRatings() async {
  //   Rating rate = Rating(
  //       rate: await readDoubleFromSecureStorage('Rate'),
  //       count: await readIntegerFromSecureStorage('Count'));
  //   return rate;
  // }

  // Future<bool> deleteFromStorage({required String key}) async {
  //   FlutterSecureStorage storage = const FlutterSecureStorage();

  //   await storage.delete(key: key);
  //   return true;
  // }

  List<Products> _cartItems = <Products>[];

  Future<void> addItemToCart(Products item) async {
    _cartItems.add(item);
    await _saveCart();
  }

  Future<void> updateCart(List<Products> items) async {
    await _saveCartToStorage(items);
  }

  Future<void> _saveCartToStorage(List<Products> items) async {
    log("i am savignn to storage...");
    final List<Map<String, dynamic>> cartData =
        items.map((item) => item.toJson()).toList();
    log(jsonEncode(cartData));
    await _storage.write(key: 'cart', value: jsonEncode(cartData));
  }

  Future<void> removeItemFromCart(Products item) async {
    _cartItems.remove(item);
    await _saveCart();
  }

  Future<void> clearStorage() async {
    await _storage.deleteAll();
  }

  Future<List<Products>> getCartItems() async {
    await _loadCart();
    return _cartItems;
  }

  Future quantityNumber() async {
    await _saveCart();
    return products;
  }

  Future<void> _saveCart() async {
    final List<Map<String, dynamic>> cartData =
        _cartItems.map((item) => item.toJson()).toList();
    await _storage.write(key: 'cart', value: jsonEncode(cartData));
  }

  Future<void> _loadCart() async {
    final String? cartDataStr = await _storage.read(key: 'cart');
    log("items from storage are $cartDataStr");
    if (cartDataStr != null) {
      final List<dynamic> cartData = jsonDecode(cartDataStr);
      _cartItems =
          cartData.map((itemJson) => Products.fromJson(itemJson)).toList();
    }
  }

  // Future<void> _loadFavorites() async {
  //   final String? cartDataStr = await _storage.read(key: 'cart');
  //   log("items from storage are $cartDataStr");
  //   if (cartDataStr != null) {
  //     final List<dynamic> cartData = jsonDecode(cartDataStr);
  //     _cartItems =
  //         cartData.map((itemJson) => Products.fromJson(itemJson)).toList();
  //   }
  // }
}

//favourites memory storage
