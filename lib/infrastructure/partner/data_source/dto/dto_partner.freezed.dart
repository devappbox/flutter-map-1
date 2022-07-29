// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dto_partner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DtoPartner _$DtoPartnerFromJson(Map<String, dynamic> json) {
  return _DtoPartner.fromJson(json);
}

/// @nodoc
mixin _$DtoPartner {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get latLong => throw _privateConstructorUsedError;
  List<int> get services => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DtoPartnerCopyWith<DtoPartner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DtoPartnerCopyWith<$Res> {
  factory $DtoPartnerCopyWith(
          DtoPartner value, $Res Function(DtoPartner) then) =
      _$DtoPartnerCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String address,
      String phoneNumber,
      String latLong,
      List<int> services});
}

/// @nodoc
class _$DtoPartnerCopyWithImpl<$Res> implements $DtoPartnerCopyWith<$Res> {
  _$DtoPartnerCopyWithImpl(this._value, this._then);

  final DtoPartner _value;
  // ignore: unused_field
  final $Res Function(DtoPartner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? latLong = freezed,
    Object? services = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latLong: latLong == freezed
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_DtoPartnerCopyWith<$Res>
    implements $DtoPartnerCopyWith<$Res> {
  factory _$$_DtoPartnerCopyWith(
          _$_DtoPartner value, $Res Function(_$_DtoPartner) then) =
      __$$_DtoPartnerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String address,
      String phoneNumber,
      String latLong,
      List<int> services});
}

/// @nodoc
class __$$_DtoPartnerCopyWithImpl<$Res> extends _$DtoPartnerCopyWithImpl<$Res>
    implements _$$_DtoPartnerCopyWith<$Res> {
  __$$_DtoPartnerCopyWithImpl(
      _$_DtoPartner _value, $Res Function(_$_DtoPartner) _then)
      : super(_value, (v) => _then(v as _$_DtoPartner));

  @override
  _$_DtoPartner get _value => super._value as _$_DtoPartner;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? latLong = freezed,
    Object? services = freezed,
  }) {
    return _then(_$_DtoPartner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latLong: latLong == freezed
          ? _value.latLong
          : latLong // ignore: cast_nullable_to_non_nullable
              as String,
      services: services == freezed
          ? _value._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DtoPartner extends _DtoPartner {
  const _$_DtoPartner(
      {required this.id,
      required this.name,
      required this.address,
      required this.phoneNumber,
      required this.latLong,
      required final List<int> services})
      : _services = services,
        super._();

  factory _$_DtoPartner.fromJson(Map<String, dynamic> json) =>
      _$$_DtoPartnerFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String latLong;
  final List<int> _services;
  @override
  List<int> get services {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_services);
  }

  @override
  String toString() {
    return 'DtoPartner(id: $id, name: $name, address: $address, phoneNumber: $phoneNumber, latLong: $latLong, services: $services)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DtoPartner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.latLong, latLong) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(latLong),
      const DeepCollectionEquality().hash(_services));

  @JsonKey(ignore: true)
  @override
  _$$_DtoPartnerCopyWith<_$_DtoPartner> get copyWith =>
      __$$_DtoPartnerCopyWithImpl<_$_DtoPartner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DtoPartnerToJson(
      this,
    );
  }
}

abstract class _DtoPartner extends DtoPartner {
  const factory _DtoPartner(
      {required final String id,
      required final String name,
      required final String address,
      required final String phoneNumber,
      required final String latLong,
      required final List<int> services}) = _$_DtoPartner;
  const _DtoPartner._() : super._();

  factory _DtoPartner.fromJson(Map<String, dynamic> json) =
      _$_DtoPartner.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get phoneNumber;
  @override
  String get latLong;
  @override
  List<int> get services;
  @override
  @JsonKey(ignore: true)
  _$$_DtoPartnerCopyWith<_$_DtoPartner> get copyWith =>
      throw _privateConstructorUsedError;
}
