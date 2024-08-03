import 'package:cartify/services/dio_exception.dart';
import 'package:cartify/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  final UserService userService;

  UserRepository({required this.userService});

  Future<String?> signIn(
      {required String username, required String password}) async {
    try {
      final response = await userService.signIn(
        username: username,
        password: password,
      );
      if (response.statusCode == 200) {
        print("=======================");
        print(response.data);
        String userToken = response.data['token'];
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("token", userToken);
        return "Okay";
      }
      // else {
      //   final errorMessage = DioExceptions.fromDioError.toString();
      //   throw Fluttertoast.showToast(
      //     msg: "Request Failed: $errorMessage",
      //     toastLength: Toast.LENGTH_LONG,
      //     gravity: ToastGravity.CENTER,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 14,
      //   );
      // }
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw Fluttertoast.showToast(
        msg: "Request Failed: $errorMessage",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 14,
      );
    }
    // return null;
  }
}
