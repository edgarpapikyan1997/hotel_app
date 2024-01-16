import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../models/hotel_model.dart';
part 'rest_client.g.dart';


// Update the abstract class
//baseUrl: "https://run.mocky.io/v3/"

@RestApi(baseUrl: "https://run.mocky.io/")
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("v3/d144777c-a67f-4e35-867a-cacc3b827473")
  Future<HotelModel> getHotelModel();
}
