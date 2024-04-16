import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_hotel_model.freezed.dart';
part 'about_hotel_model.g.dart';

@freezed
class AboutHotelModel with _$AboutHotelModel {
  factory AboutHotelModel({
    String? description,
    List<String>? peculiarities,
  }) = _AboutHotelModel;

  factory AboutHotelModel.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelModelFromJson(json);
}