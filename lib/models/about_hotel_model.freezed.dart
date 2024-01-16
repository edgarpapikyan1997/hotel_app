// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_hotel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutHotelModel _$AboutHotelModelFromJson(Map<String, dynamic> json) {
  return _AboutHotelModel.fromJson(json);
}

/// @nodoc
mixin _$AboutHotelModel {
  String? get description => throw _privateConstructorUsedError;
  List<String>? get peculiarities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutHotelModelCopyWith<AboutHotelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelModelCopyWith<$Res> {
  factory $AboutHotelModelCopyWith(
          AboutHotelModel value, $Res Function(AboutHotelModel) then) =
      _$AboutHotelModelCopyWithImpl<$Res, AboutHotelModel>;
  @useResult
  $Res call({String? description, List<String>? peculiarities});
}

/// @nodoc
class _$AboutHotelModelCopyWithImpl<$Res, $Val extends AboutHotelModel>
    implements $AboutHotelModelCopyWith<$Res> {
  _$AboutHotelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value.peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutHotelModelImplCopyWith<$Res>
    implements $AboutHotelModelCopyWith<$Res> {
  factory _$$AboutHotelModelImplCopyWith(_$AboutHotelModelImpl value,
          $Res Function(_$AboutHotelModelImpl) then) =
      __$$AboutHotelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description, List<String>? peculiarities});
}

/// @nodoc
class __$$AboutHotelModelImplCopyWithImpl<$Res>
    extends _$AboutHotelModelCopyWithImpl<$Res, _$AboutHotelModelImpl>
    implements _$$AboutHotelModelImplCopyWith<$Res> {
  __$$AboutHotelModelImplCopyWithImpl(
      _$AboutHotelModelImpl _value, $Res Function(_$AboutHotelModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? peculiarities = freezed,
  }) {
    return _then(_$AboutHotelModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      peculiarities: freezed == peculiarities
          ? _value._peculiarities
          : peculiarities // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutHotelModelImpl implements _AboutHotelModel {
  _$AboutHotelModelImpl({this.description, final List<String>? peculiarities})
      : _peculiarities = peculiarities;

  factory _$AboutHotelModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutHotelModelImplFromJson(json);

  @override
  final String? description;
  final List<String>? _peculiarities;
  @override
  List<String>? get peculiarities {
    final value = _peculiarities;
    if (value == null) return null;
    if (_peculiarities is EqualUnmodifiableListView) return _peculiarities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AboutHotelModel(description: $description, peculiarities: $peculiarities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHotelModelImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._peculiarities, _peculiarities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_peculiarities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutHotelModelImplCopyWith<_$AboutHotelModelImpl> get copyWith =>
      __$$AboutHotelModelImplCopyWithImpl<_$AboutHotelModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutHotelModelImplToJson(
      this,
    );
  }
}

abstract class _AboutHotelModel implements AboutHotelModel {
  factory _AboutHotelModel(
      {final String? description,
      final List<String>? peculiarities}) = _$AboutHotelModelImpl;

  factory _AboutHotelModel.fromJson(Map<String, dynamic> json) =
      _$AboutHotelModelImpl.fromJson;

  @override
  String? get description;
  @override
  List<String>? get peculiarities;
  @override
  @JsonKey(ignore: true)
  _$$AboutHotelModelImplCopyWith<_$AboutHotelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
