import 'package:dio/dio.dart';

Dio buildDioClient() {
  final dio = Dio()..options = BaseOptions(baseUrl: "https://run.mocky.io/");
  return dio;
}
