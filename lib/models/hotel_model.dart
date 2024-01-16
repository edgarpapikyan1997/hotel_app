import 'package:freezed_annotation/freezed_annotation.dart';
part 'hotel_model.freezed.dart';
part 'hotel_model.g.dart';

@freezed
class HotelModel with _$HotelModel {
  factory HotelModel({
    required int id,
    String? name,
    String? adress,
    int? minimal_price,
    String? price_for_it,
    int? rating,
    String? rating_name,
    List<String>? image_urls,
    dynamic about_the_hotel,
  }) = _HotelModel;

  factory HotelModel.fromJson(Map<String, dynamic> json) =>
      _$HotelModelFromJson(json);
}