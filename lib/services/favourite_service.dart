import 'dart:convert';
import 'dart:developer';
import 'package:cartify/model/products.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FavouritesService {
  static final FavouritesService _service = FavouritesService._internal();
  FavouritesService._internal();
  factory FavouritesService() => _service;

  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  // Future<int?> readIntegerFromSecureStorage(String key) async {
  //   try {
  //     String? stringValue = await _service._storage.read(key: key);
  //     if (stringValue != null) {
  //       return int.tryParse(stringValue);
  //     }
  //   } catch (e) {
  //     print('Error reading integer from secure storage: $e');
  //   }
  //   return null;
  // }

  // Future<double?> readDoubleFromSecureStorage(String key) async {
  //   try {
  //     String? stringValue = await _service._storage.read(key: key);
  //     if (stringValue != null) {
  //       return double.tryParse(stringValue);
  //     }
  //   } catch (e) {
  //     print('Error reading integer from secure storage: $e');
  //   }
  //   return null;
  // }

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

  List<Products> _cartItems = <Products>[];

  Future<void> addItemToFavourites(Products item) async {
    _cartItems.add(item);
    await _saveFavourites();
  }

  Future<void> updateCart(List<Products> items) async {
    await _saveFavouritesToStorage(items);
  }

  Future<void> _saveFavouritesToStorage(List<Products> items) async {
    log("i am saving to storage...");
    final List<Map<String, dynamic>> cartData =
        items.map((item) => item.toJson()).toList();
    log(jsonEncode(cartData));
    await _storage.write(key: 'favourites', value: jsonEncode(cartData));
  }

  Future<void> removeItemFromFavourites(Products item) async {
    _cartItems.remove(item);
    await _saveFavourites();
  }

  Future<void> clearStorage() async {
    await _storage.deleteAll();
  }

  Future<List<Products>> getFavouritesItems() async {
    await _loadFavorites();
    return _cartItems;
  }

  // Future quantityNumber() async {
  //   await _saveCart();
  //   return products;
  // }

  Future<void> _saveFavourites() async {
    final List<Map<String, dynamic>> cartData =
        _cartItems.map((item) => item.toJson()).toList();
    await _storage.write(key: 'favourites', value: jsonEncode(cartData));
  }

  Future<void> _loadFavorites() async {
    final String? cartDataStr = await _storage.read(key: 'favourites');
    log("items from storage are $cartDataStr");
    if (cartDataStr != null) {
      final List<dynamic> cartData = jsonDecode(cartDataStr);
      _cartItems =
          cartData.map((itemJson) => Products.fromJson(itemJson)).toList();
    }
  }
}

//favourites memory storage
