import 'package:get_it/get_it.dart';
import 'package:hotel_test_app/network/dio/dio_client.dart';
import 'package:hotel_test_app/network/retrofit/rest_client.dart';

final locator = GetIt.instance;

Future initLocator() async {
  final dio = buildDioClient();
  locator.registerLazySingleton<RestClient>(
      () => RestClient(dio));
}
