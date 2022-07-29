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
  StateStatus<FailureExceptions, List<Partner>?> get status =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartnerListStateCopyWith<PartnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerListStateCopyWith<$Res> {
  factory $PartnerListStateCopyWith(
          PartnerListState value, $Res Function(PartnerListState) then) =
      _$PartnerListStateCopyWithImpl<$Res>;
  $Res call({StateStatus<FailureExceptions, List<Partner>?> status});

  $StateStatusCopyWith<FailureExceptions, List<Partner>?, $Res> get status;
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
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, List<Partner>?>,
    ));
  }

  @override
  $StateStatusCopyWith<FailureExceptions, List<Partner>?, $Res> get status {
    return $StateStatusCopyWith<FailureExceptions, List<Partner>?, $Res>(
        _value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$$_PartnerListStateCopyWith<$Res>
    implements $PartnerListStateCopyWith<$Res> {
  factory _$$_PartnerListStateCopyWith(
          _$_PartnerListState value, $Res Function(_$_PartnerListState) then) =
      __$$_PartnerListStateCopyWithImpl<$Res>;
  @override
  $Res call({StateStatus<FailureExceptions, List<Partner>?> status});

  @override
  $StateStatusCopyWith<FailureExceptions, List<Partner>?, $Res> get status;
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
    Object? status = freezed,
  }) {
    return _then(_$_PartnerListState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StateStatus<FailureExceptions, List<Partner>?>,
    ));
  }
}

/// @nodoc

class _$_PartnerListState
    with DiagnosticableTreeMixin
    implements _PartnerListState {
  const _$_PartnerListState({required this.status});

  @override
  final StateStatus<FailureExceptions, List<Partner>?> status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PartnerListState(status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PartnerListState'))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PartnerListState &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_PartnerListStateCopyWith<_$_PartnerListState> get copyWith =>
      __$$_PartnerListStateCopyWithImpl<_$_PartnerListState>(this, _$identity);
}

abstract class _PartnerListState implements PartnerListState {
  const factory _PartnerListState(
      {required final StateStatus<FailureExceptions, List<Partner>?>
          status}) = _$_PartnerListState;

  @override
  StateStatus<FailureExceptions, List<Partner>?> get status;
  @override
  @JsonKey(ignore: true)
  _$$_PartnerListStateCopyWith<_$_PartnerListState> get copyWith =>
      throw _privateConstructorUsedError;
}
