import 'package:hotel_test_app/models/about_hotel_model.dart';

import '../../models/hotel_model.dart';
import '../retrofit/rest_client.dart';

class HotelRepository {
  final RestClient _restClient;

  HotelRepository(this._restClient);

  Future<HotelModel> getHotel() async {
    try {
      final hotelModel = await _restClient.getHotelModel();
      return hotelModel;
    } catch (e) {
      print("Error fetching hotel data: $e");
      rethrow;
    }
  }
}

class AboutHotelRepository {
  final HotelModel hotelModel;

  AboutHotelRepository(this.hotelModel);

  Future<AboutHotelModel> getAboutModel() async {
    try {
      final aboutModel = await hotelModel.about_the_hotel as AboutHotelModel;
      return aboutModel;
    } catch (e) {
      print("Error fetching data about hotel data: $e");
      rethrow;
    }
  }
}


