// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Place {
  String get id => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime get endTime => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  PlaceType get type => throw _privateConstructorUsedError;
  Coordinate get coordinate => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call({
    String id,
    DateTime startTime,
    DateTime endTime,
    String name,
    PlaceType type,
    Coordinate coordinate,
    Address address,
  });

  $CoordinateCopyWith<$Res> get coordinate;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? name = null,
    Object? type = null,
    Object? coordinate = null,
    Object? address = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            startTime:
                null == startTime
                    ? _value.startTime
                    : startTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endTime:
                null == endTime
                    ? _value.endTime
                    : endTime // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as PlaceType,
            coordinate:
                null == coordinate
                    ? _value.coordinate
                    : coordinate // ignore: cast_nullable_to_non_nullable
                        as Coordinate,
            address:
                null == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as Address,
          )
          as $Val,
    );
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
    _$PlaceImpl value,
    $Res Function(_$PlaceImpl) then,
  ) = __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    DateTime startTime,
    DateTime endTime,
    String name,
    PlaceType type,
    Coordinate coordinate,
    Address address,
  });

  @override
  $CoordinateCopyWith<$Res> get coordinate;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
    _$PlaceImpl _value,
    $Res Function(_$PlaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startTime = null,
    Object? endTime = null,
    Object? name = null,
    Object? type = null,
    Object? coordinate = null,
    Object? address = null,
  }) {
    return _then(
      _$PlaceImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        startTime:
            null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endTime:
            null == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as PlaceType,
        coordinate:
            null == coordinate
                ? _value.coordinate
                : coordinate // ignore: cast_nullable_to_non_nullable
                    as Coordinate,
        address:
            null == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as Address,
      ),
    );
  }
}

/// @nodoc

class _$PlaceImpl implements _Place {
  const _$PlaceImpl({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.name,
    required this.type,
    required this.coordinate,
    required this.address,
  });

  @override
  final String id;
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;
  @override
  final String name;
  @override
  final PlaceType type;
  @override
  final Coordinate coordinate;
  @override
  final Address address;

  @override
  String toString() {
    return 'Place(id: $id, startTime: $startTime, endTime: $endTime, name: $name, type: $type, coordinate: $coordinate, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    startTime,
    endTime,
    name,
    type,
    coordinate,
    address,
  );

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);
}

abstract class _Place implements Place {
  const factory _Place({
    required final String id,
    required final DateTime startTime,
    required final DateTime endTime,
    required final String name,
    required final PlaceType type,
    required final Coordinate coordinate,
    required final Address address,
  }) = _$PlaceImpl;

  @override
  String get id;
  @override
  DateTime get startTime;
  @override
  DateTime get endTime;
  @override
  String get name;
  @override
  PlaceType get type;
  @override
  Coordinate get coordinate;
  @override
  Address get address;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
