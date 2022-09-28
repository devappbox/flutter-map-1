// // coverage:ignore-file
// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: type=lint
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

// part of 'merchant_pick_up_location_bloc.dart';

// // **************************************************************************
// // FreezedGenerator
// // **************************************************************************

// T _$identity<T>(T value) => value;

// final _privateConstructorUsedError = UnsupportedError(
//     'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

// /// @nodoc
// mixin _$MerchantPickUpLocationState {
//   double? get latitude => throw _privateConstructorUsedError;
//   double? get longitude => throw _privateConstructorUsedError;
//   String? get address => throw _privateConstructorUsedError;
//   StateStatus<String?, String?> get status =>
//       throw _privateConstructorUsedError;

//   @JsonKey(ignore: true)
//   $MerchantPickUpLocationStateCopyWith<MerchantPickUpLocationState>
//       get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $MerchantPickUpLocationStateCopyWith<$Res> {
//   factory $MerchantPickUpLocationStateCopyWith(
//           MerchantPickUpLocationState value,
//           $Res Function(MerchantPickUpLocationState) then) =
//       _$MerchantPickUpLocationStateCopyWithImpl<$Res>;
//   $Res call(
//       {double? latitude,
//       double? longitude,
//       String? address,
//       StateStatus<String?, String?> status});

//   $StateStatusCopyWith<String?, String?, $Res> get status;
// }

// /// @nodoc
// class _$MerchantPickUpLocationStateCopyWithImpl<$Res>
//     implements $MerchantPickUpLocationStateCopyWith<$Res> {
//   _$MerchantPickUpLocationStateCopyWithImpl(this._value, this._then);

//   final MerchantPickUpLocationState _value;
//   // ignore: unused_field
//   final $Res Function(MerchantPickUpLocationState) _then;

//   @override
//   $Res call({
//     Object? latitude = freezed,
//     Object? longitude = freezed,
//     Object? address = freezed,
//     Object? status = freezed,
//   }) {
//     return _then(_value.copyWith(
//       latitude: latitude == freezed
//           ? _value.latitude
//           : latitude // ignore: cast_nullable_to_non_nullable
//               as double?,
//       longitude: longitude == freezed
//           ? _value.longitude
//           : longitude // ignore: cast_nullable_to_non_nullable
//               as double?,
//       address: address == freezed
//           ? _value.address
//           : address // ignore: cast_nullable_to_non_nullable
//               as String?,
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as StateStatus<String?, String?>,
//     ));
//   }

//   @override
//   $StateStatusCopyWith<String?, String?, $Res> get status {
//     return $StateStatusCopyWith<String?, String?, $Res>(_value.status, (value) {
//       return _then(_value.copyWith(status: value));
//     });
//   }
// }

// /// @nodoc
// abstract class _$$_MerchantPickUpLocationStateCopyWith<$Res>
//     implements $MerchantPickUpLocationStateCopyWith<$Res> {
//   factory _$$_MerchantPickUpLocationStateCopyWith(
//           _$_MerchantPickUpLocationState value,
//           $Res Function(_$_MerchantPickUpLocationState) then) =
//       __$$_MerchantPickUpLocationStateCopyWithImpl<$Res>;
//   @override
//   $Res call(
//       {double? latitude,
//       double? longitude,
//       String? address,
//       StateStatus<String?, String?> status});

//   @override
//   $StateStatusCopyWith<String?, String?, $Res> get status;
// }

// /// @nodoc
// class __$$_MerchantPickUpLocationStateCopyWithImpl<$Res>
//     extends _$MerchantPickUpLocationStateCopyWithImpl<$Res>
//     implements _$$_MerchantPickUpLocationStateCopyWith<$Res> {
//   __$$_MerchantPickUpLocationStateCopyWithImpl(
//       _$_MerchantPickUpLocationState _value,
//       $Res Function(_$_MerchantPickUpLocationState) _then)
//       : super(_value, (v) => _then(v as _$_MerchantPickUpLocationState));

//   @override
//   _$_MerchantPickUpLocationState get _value =>
//       super._value as _$_MerchantPickUpLocationState;

//   @override
//   $Res call({
//     Object? latitude = freezed,
//     Object? longitude = freezed,
//     Object? address = freezed,
//     Object? status = freezed,
//   }) {
//     return _then(_$_MerchantPickUpLocationState(
//       latitude: latitude == freezed
//           ? _value.latitude
//           : latitude // ignore: cast_nullable_to_non_nullable
//               as double?,
//       longitude: longitude == freezed
//           ? _value.longitude
//           : longitude // ignore: cast_nullable_to_non_nullable
//               as double?,
//       address: address == freezed
//           ? _value.address
//           : address // ignore: cast_nullable_to_non_nullable
//               as String?,
//       status: status == freezed
//           ? _value.status
//           : status // ignore: cast_nullable_to_non_nullable
//               as StateStatus<String?, String?>,
//     ));
//   }
// }

// /// @nodoc

// class _$_MerchantPickUpLocationState implements _MerchantPickUpLocationState {
//   const _$_MerchantPickUpLocationState(
//       {required this.latitude,
//       required this.longitude,
//       required this.address,
//       required this.status});

//   @override
//   final double? latitude;
//   @override
//   final double? longitude;
//   @override
//   final String? address;
//   @override
//   final StateStatus<String?, String?> status;

//   @override
//   String toString() {
//     return 'MerchantPickUpLocationState(latitude: $latitude, longitude: $longitude, address: $address, status: $status)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$_MerchantPickUpLocationState &&
//             const DeepCollectionEquality().equals(other.latitude, latitude) &&
//             const DeepCollectionEquality().equals(other.longitude, longitude) &&
//             const DeepCollectionEquality().equals(other.address, address) &&
//             const DeepCollectionEquality().equals(other.status, status));
//   }

//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(latitude),
//       const DeepCollectionEquality().hash(longitude),
//       const DeepCollectionEquality().hash(address),
//       const DeepCollectionEquality().hash(status));

//   @JsonKey(ignore: true)
//   @override
//   _$$_MerchantPickUpLocationStateCopyWith<_$_MerchantPickUpLocationState>
//       get copyWith => __$$_MerchantPickUpLocationStateCopyWithImpl<
//           _$_MerchantPickUpLocationState>(this, _$identity);
// }

// abstract class _MerchantPickUpLocationState
//     implements MerchantPickUpLocationState {
//   const factory _MerchantPickUpLocationState(
//           {required final double? latitude,
//           required final double? longitude,
//           required final String? address,
//           required final StateStatus<String?, String?> status}) =
//       _$_MerchantPickUpLocationState;

//   @override
//   double? get latitude;
//   @override
//   double? get longitude;
//   @override
//   String? get address;
//   @override
//   StateStatus<String?, String?> get status;
//   @override
//   @JsonKey(ignore: true)
//   _$$_MerchantPickUpLocationStateCopyWith<_$_MerchantPickUpLocationState>
//       get copyWith => throw _privateConstructorUsedError;
// }

// /// @nodoc
// mixin _$MerchantPickUpLocationEvent {
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() load,
//     required TResult Function() start,
//     required TResult Function(double latitude, double longitude) idle,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(MerchantPickUpLocationLoadEvent value) load,
//     required TResult Function(MerchantPickUpLocationStartEvent value) start,
//     required TResult Function(MerchantPickUpLocationIdleEvent value) idle,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//   }) =>
//       throw _privateConstructorUsedError;
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//     required TResult orElse(),
//   }) =>
//       throw _privateConstructorUsedError;
// }

// /// @nodoc
// abstract class $MerchantPickUpLocationEventCopyWith<$Res> {
//   factory $MerchantPickUpLocationEventCopyWith(
//           MerchantPickUpLocationEvent value,
//           $Res Function(MerchantPickUpLocationEvent) then) =
//       _$MerchantPickUpLocationEventCopyWithImpl<$Res>;
// }

// /// @nodoc
// class _$MerchantPickUpLocationEventCopyWithImpl<$Res>
//     implements $MerchantPickUpLocationEventCopyWith<$Res> {
//   _$MerchantPickUpLocationEventCopyWithImpl(this._value, this._then);

//   final MerchantPickUpLocationEvent _value;
//   // ignore: unused_field
//   final $Res Function(MerchantPickUpLocationEvent) _then;
// }

// /// @nodoc
// abstract class _$$MerchantPickUpLocationLoadEventCopyWith<$Res> {
//   factory _$$MerchantPickUpLocationLoadEventCopyWith(
//           _$MerchantPickUpLocationLoadEvent value,
//           $Res Function(_$MerchantPickUpLocationLoadEvent) then) =
//       __$$MerchantPickUpLocationLoadEventCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$MerchantPickUpLocationLoadEventCopyWithImpl<$Res>
//     extends _$MerchantPickUpLocationEventCopyWithImpl<$Res>
//     implements _$$MerchantPickUpLocationLoadEventCopyWith<$Res> {
//   __$$MerchantPickUpLocationLoadEventCopyWithImpl(
//       _$MerchantPickUpLocationLoadEvent _value,
//       $Res Function(_$MerchantPickUpLocationLoadEvent) _then)
//       : super(_value, (v) => _then(v as _$MerchantPickUpLocationLoadEvent));

//   @override
//   _$MerchantPickUpLocationLoadEvent get _value =>
//       super._value as _$MerchantPickUpLocationLoadEvent;
// }

// /// @nodoc

// class _$MerchantPickUpLocationLoadEvent
//     implements MerchantPickUpLocationLoadEvent {
//   const _$MerchantPickUpLocationLoadEvent();

//   @override
//   String toString() {
//     return 'MerchantPickUpLocationEvent.load()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$MerchantPickUpLocationLoadEvent);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() load,
//     required TResult Function() start,
//     required TResult Function(double latitude, double longitude) idle,
//   }) {
//     return load();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//   }) {
//     return load?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//     required TResult orElse(),
//   }) {
//     if (load != null) {
//       return load();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(MerchantPickUpLocationLoadEvent value) load,
//     required TResult Function(MerchantPickUpLocationStartEvent value) start,
//     required TResult Function(MerchantPickUpLocationIdleEvent value) idle,
//   }) {
//     return load(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//   }) {
//     return load?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//     required TResult orElse(),
//   }) {
//     if (load != null) {
//       return load(this);
//     }
//     return orElse();
//   }
// }

// abstract class MerchantPickUpLocationLoadEvent
//     implements MerchantPickUpLocationEvent {
//   const factory MerchantPickUpLocationLoadEvent() =
//       _$MerchantPickUpLocationLoadEvent;
// }

// /// @nodoc
// abstract class _$$MerchantPickUpLocationStartEventCopyWith<$Res> {
//   factory _$$MerchantPickUpLocationStartEventCopyWith(
//           _$MerchantPickUpLocationStartEvent value,
//           $Res Function(_$MerchantPickUpLocationStartEvent) then) =
//       __$$MerchantPickUpLocationStartEventCopyWithImpl<$Res>;
// }

// /// @nodoc
// class __$$MerchantPickUpLocationStartEventCopyWithImpl<$Res>
//     extends _$MerchantPickUpLocationEventCopyWithImpl<$Res>
//     implements _$$MerchantPickUpLocationStartEventCopyWith<$Res> {
//   __$$MerchantPickUpLocationStartEventCopyWithImpl(
//       _$MerchantPickUpLocationStartEvent _value,
//       $Res Function(_$MerchantPickUpLocationStartEvent) _then)
//       : super(_value, (v) => _then(v as _$MerchantPickUpLocationStartEvent));

//   @override
//   _$MerchantPickUpLocationStartEvent get _value =>
//       super._value as _$MerchantPickUpLocationStartEvent;
// }

// /// @nodoc

// class _$MerchantPickUpLocationStartEvent
//     implements MerchantPickUpLocationStartEvent {
//   const _$MerchantPickUpLocationStartEvent();

//   @override
//   String toString() {
//     return 'MerchantPickUpLocationEvent.start()';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$MerchantPickUpLocationStartEvent);
//   }

//   @override
//   int get hashCode => runtimeType.hashCode;

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() load,
//     required TResult Function() start,
//     required TResult Function(double latitude, double longitude) idle,
//   }) {
//     return start();
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//   }) {
//     return start?.call();
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//     required TResult orElse(),
//   }) {
//     if (start != null) {
//       return start();
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(MerchantPickUpLocationLoadEvent value) load,
//     required TResult Function(MerchantPickUpLocationStartEvent value) start,
//     required TResult Function(MerchantPickUpLocationIdleEvent value) idle,
//   }) {
//     return start(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//   }) {
//     return start?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//     required TResult orElse(),
//   }) {
//     if (start != null) {
//       return start(this);
//     }
//     return orElse();
//   }
// }

// abstract class MerchantPickUpLocationStartEvent
//     implements MerchantPickUpLocationEvent {
//   const factory MerchantPickUpLocationStartEvent() =
//       _$MerchantPickUpLocationStartEvent;
// }

// /// @nodoc
// abstract class _$$MerchantPickUpLocationIdleEventCopyWith<$Res> {
//   factory _$$MerchantPickUpLocationIdleEventCopyWith(
//           _$MerchantPickUpLocationIdleEvent value,
//           $Res Function(_$MerchantPickUpLocationIdleEvent) then) =
//       __$$MerchantPickUpLocationIdleEventCopyWithImpl<$Res>;
//   $Res call({double latitude, double longitude});
// }

// /// @nodoc
// class __$$MerchantPickUpLocationIdleEventCopyWithImpl<$Res>
//     extends _$MerchantPickUpLocationEventCopyWithImpl<$Res>
//     implements _$$MerchantPickUpLocationIdleEventCopyWith<$Res> {
//   __$$MerchantPickUpLocationIdleEventCopyWithImpl(
//       _$MerchantPickUpLocationIdleEvent _value,
//       $Res Function(_$MerchantPickUpLocationIdleEvent) _then)
//       : super(_value, (v) => _then(v as _$MerchantPickUpLocationIdleEvent));

//   @override
//   _$MerchantPickUpLocationIdleEvent get _value =>
//       super._value as _$MerchantPickUpLocationIdleEvent;

//   @override
//   $Res call({
//     Object? latitude = freezed,
//     Object? longitude = freezed,
//   }) {
//     return _then(_$MerchantPickUpLocationIdleEvent(
//       latitude: latitude == freezed
//           ? _value.latitude
//           : latitude // ignore: cast_nullable_to_non_nullable
//               as double,
//       longitude: longitude == freezed
//           ? _value.longitude
//           : longitude // ignore: cast_nullable_to_non_nullable
//               as double,
//     ));
//   }
// }

// /// @nodoc

// class _$MerchantPickUpLocationIdleEvent
//     implements MerchantPickUpLocationIdleEvent {
//   const _$MerchantPickUpLocationIdleEvent(
//       {required this.latitude, required this.longitude});

//   @override
//   final double latitude;
//   @override
//   final double longitude;

//   @override
//   String toString() {
//     return 'MerchantPickUpLocationEvent.idle(latitude: $latitude, longitude: $longitude)';
//   }

//   @override
//   bool operator ==(dynamic other) {
//     return identical(this, other) ||
//         (other.runtimeType == runtimeType &&
//             other is _$MerchantPickUpLocationIdleEvent &&
//             const DeepCollectionEquality().equals(other.latitude, latitude) &&
//             const DeepCollectionEquality().equals(other.longitude, longitude));
//   }

//   @override
//   int get hashCode => Object.hash(
//       runtimeType,
//       const DeepCollectionEquality().hash(latitude),
//       const DeepCollectionEquality().hash(longitude));

//   @JsonKey(ignore: true)
//   @override
//   _$$MerchantPickUpLocationIdleEventCopyWith<_$MerchantPickUpLocationIdleEvent>
//       get copyWith => __$$MerchantPickUpLocationIdleEventCopyWithImpl<
//           _$MerchantPickUpLocationIdleEvent>(this, _$identity);

//   @override
//   @optionalTypeArgs
//   TResult when<TResult extends Object?>({
//     required TResult Function() load,
//     required TResult Function() start,
//     required TResult Function(double latitude, double longitude) idle,
//   }) {
//     return idle(latitude, longitude);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? whenOrNull<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//   }) {
//     return idle?.call(latitude, longitude);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeWhen<TResult extends Object?>({
//     TResult Function()? load,
//     TResult Function()? start,
//     TResult Function(double latitude, double longitude)? idle,
//     required TResult orElse(),
//   }) {
//     if (idle != null) {
//       return idle(latitude, longitude);
//     }
//     return orElse();
//   }

//   @override
//   @optionalTypeArgs
//   TResult map<TResult extends Object?>({
//     required TResult Function(MerchantPickUpLocationLoadEvent value) load,
//     required TResult Function(MerchantPickUpLocationStartEvent value) start,
//     required TResult Function(MerchantPickUpLocationIdleEvent value) idle,
//   }) {
//     return idle(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult? mapOrNull<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//   }) {
//     return idle?.call(this);
//   }

//   @override
//   @optionalTypeArgs
//   TResult maybeMap<TResult extends Object?>({
//     TResult Function(MerchantPickUpLocationLoadEvent value)? load,
//     TResult Function(MerchantPickUpLocationStartEvent value)? start,
//     TResult Function(MerchantPickUpLocationIdleEvent value)? idle,
//     required TResult orElse(),
//   }) {
//     if (idle != null) {
//       return idle(this);
//     }
//     return orElse();
//   }
// }

// abstract class MerchantPickUpLocationIdleEvent
//     implements MerchantPickUpLocationEvent {
//   const factory MerchantPickUpLocationIdleEvent(
//       {required final double latitude,
//       required final double longitude}) = _$MerchantPickUpLocationIdleEvent;

//   double get latitude;
//   double get longitude;
//   @JsonKey(ignore: true)
//   _$$MerchantPickUpLocationIdleEventCopyWith<_$MerchantPickUpLocationIdleEvent>
//       get copyWith => throw _privateConstructorUsedError;
// }
