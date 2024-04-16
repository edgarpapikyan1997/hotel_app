// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_hotel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutHotelModelImpl _$$AboutHotelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AboutHotelModelImpl(
      description: json['description'] as String?,
      peculiarities: (json['peculiarities'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AboutHotelModelImplToJson(
        _$AboutHotelModelImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'peculiarities': instance.peculiarities,
    };
