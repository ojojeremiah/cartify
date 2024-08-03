import 'package:cartify/controller/products_controller.dart';
import 'package:cartify/controller/user_controller.dart';
import 'package:cartify/repository/user_repository.dart';
import 'package:cartify/services/products_service.dart';
import 'package:cartify/services/user_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'dio_Client.dart';

final getIt = GetIt.instance;

Future<void> setupApiLocation() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(UserService(dioClient: getIt<DioClient>()));
  getIt.registerSingleton<UserRepository>(
      UserRepository(userService: getIt.get<UserService>()));
  getIt.registerSingleton(UserContoller());
  getIt.registerSingleton(ProductService(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(ProductController());
}
