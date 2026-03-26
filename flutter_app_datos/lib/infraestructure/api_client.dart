import 'package:dio/dio.dart';
class ApiClient{
  static final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://pokeapi.co/api/v2',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3)
    )
  );
}