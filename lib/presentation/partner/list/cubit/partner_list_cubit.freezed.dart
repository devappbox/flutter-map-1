// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'partner_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PartnerListState {
  List<Partner>? get partners => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnerListStateCopyWith<PartnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerListStateCopyWith<$Res> {
  factory $PartnerListStateCopyWith(
          PartnerListState value, $Res Function(PartnerListState) then) =
      _$PartnerListStateCopyWithImpl<$Res>;
  $Res call({List<Partner>? partners, String? keyWord});
}

/// @nodoc
class _$PartnerListStateCopyWithImpl<$Res>
    implements $PartnerListStateCopyWith<$Res> {
  _$PartnerListStateCopyWithImpl(this._value, this._then);

  final PartnerListState _value;
  // ignore: unused_field
  final $Res Function(PartnerListState) _then;

  @override
  $Res call({
    Object? partners = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      partners: partners == freezed
          ? _value.partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<Partner>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PartnerListStateCopyWith<$Res>
    implements $PartnerListStateCopyWith<$Res> {
  factory _$$_PartnerListStateCopyWith(
          _$_PartnerListState value, $Res Function(_$_PartnerListState) then) =
      __$$_PartnerListStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Partner>? partners, String? keyWord});
}

/// @nodoc
class __$$_PartnerListStateCopyWithImpl<$Res>
    extends _$PartnerListStateCopyWithImpl<$Res>
    implements _$$_PartnerListStateCopyWith<$Res> {
  __$$_PartnerListStateCopyWithImpl(
      _$_PartnerListState _value, $Res Function(_$_PartnerListState) _then)
      : super(_value, (v) => _then(v as _$_PartnerListState));

  @override
  _$_PartnerListState get _value => super._value as _$_PartnerListState;

  @override
  $Res call({
    Object? partners = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_$_PartnerListState(
      partners: partners == freezed
          ? _value._partners
          : partners // ignore: cast_nullable_to_non_nullable
              as List<Partner>?,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PartnerListState
    with DiagnosticableTreeMixin
    implements _PartnerListState {
  const _$_PartnerListState(
      {required final List<Partner>? partners, required this.keyWord})
      : _partners = partners;

  final List<Partner>? _partners;
  @override
  List<Partner>? get partners {
    final value = _partners;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? keyWord;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PartnerListState(partners: $partners, keyWord: $keyWord)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PartnerListState'))
      ..add(DiagnosticsProperty('partners', partners))
      ..add(DiagnosticsProperty('keyWord', keyWord));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerListState &&
            const DeepCollectionEquality().equals(other._partners, _partners) &&
            const DeepCollectionEquality().equals(other.keyWord, keyWord));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_partners),
      const DeepCollectionEquality().hash(keyWord));

  @JsonKey(ignore: true)
  @override
  _$$_PartnerListStateCopyWith<_$_PartnerListState> get copyWith =>
      __$$_PartnerListStateCopyWithImpl<_$_PartnerListState>(this, _$identity);
}

abstract class _PartnerListState implements PartnerListState {
  const factory _PartnerListState(
      {required final List<Partner>? partners,
      required final String? keyWord}) = _$_PartnerListState;

  @override
  List<Partner>? get partners;
  @override
  String? get keyWord;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerListStateCopyWith<_$_PartnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}
