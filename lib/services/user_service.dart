import 'dart:convert';

import 'package:cartify/services/dio_Client.dart';
import 'package:cartify/services/endpoits.dart';
import 'package:dio/dio.dart';

class UserService {
  final DioClient dioClient;

  UserService({required this.dioClient});

  Future<Response> createAccount({
    required String email,
    required String password,
    required String name,
  }) async {
    var payload = {
      'email': email,
      'name': name,
      'password': password,
    };
    try {
      final Response response = await dioClient.post(Endpoints.createAccount,
          data: payload,
          options: Options(headers: {
            "Content-Type": "application/json",
            // "Connection": "keep-alive"
          }));
      print("======================");
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> signIn(
      {required String username, required String password}) async {
    try {
      final Response response = await dioClient.post(Endpoints.auth,
          data: jsonEncode(
            {
              'username': username,
              'password': password,
            },
          ),
          options: Options(
            headers: {
              "Content-Type": "application/json",
            },
          ));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> validatePhoneOtp(
      {required String phoneNumber, required int otp}) async {
    try {
      final Response response = await dioClient.put(Endpoints.validateOtp,
          data: {'phoneNumber': phoneNumber, 'otp': otp},
          options: Options(headers: {
            "Content-Type": "application.json",
          }));
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> requestPhoneOtp({required String phoneNumber}) async {
    try {
      final Response response = await dioClient.post(
        Endpoints.sendPhoneOtp,
        data: {
          'phoneNumber': phoneNumber,
        },
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
