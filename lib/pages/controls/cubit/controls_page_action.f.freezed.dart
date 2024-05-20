// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controls_page_action.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ControlsPageAction {
  String get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) receivedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? receivedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? receivedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnDataReceived value) receivedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnDataReceived value)? receivedData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnDataReceived value)? receivedData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ControlsPageActionCopyWith<ControlsPageAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControlsPageActionCopyWith<$Res> {
  factory $ControlsPageActionCopyWith(
          ControlsPageAction value, $Res Function(ControlsPageAction) then) =
      _$ControlsPageActionCopyWithImpl<$Res, ControlsPageAction>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$ControlsPageActionCopyWithImpl<$Res, $Val extends ControlsPageAction>
    implements $ControlsPageActionCopyWith<$Res> {
  _$ControlsPageActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnDataReceivedImplCopyWith<$Res>
    implements $ControlsPageActionCopyWith<$Res> {
  factory _$$OnDataReceivedImplCopyWith(_$OnDataReceivedImpl value,
          $Res Function(_$OnDataReceivedImpl) then) =
      __$$OnDataReceivedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$OnDataReceivedImplCopyWithImpl<$Res>
    extends _$ControlsPageActionCopyWithImpl<$Res, _$OnDataReceivedImpl>
    implements _$$OnDataReceivedImplCopyWith<$Res> {
  __$$OnDataReceivedImplCopyWithImpl(
      _$OnDataReceivedImpl _value, $Res Function(_$OnDataReceivedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OnDataReceivedImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnDataReceivedImpl implements OnDataReceived {
  const _$OnDataReceivedImpl({required this.data});

  @override
  final String data;

  @override
  String toString() {
    return 'ControlsPageAction.receivedData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnDataReceivedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnDataReceivedImplCopyWith<_$OnDataReceivedImpl> get copyWith =>
      __$$OnDataReceivedImplCopyWithImpl<_$OnDataReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) receivedData,
  }) {
    return receivedData(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? receivedData,
  }) {
    return receivedData?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? receivedData,
    required TResult orElse(),
  }) {
    if (receivedData != null) {
      return receivedData(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnDataReceived value) receivedData,
  }) {
    return receivedData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnDataReceived value)? receivedData,
  }) {
    return receivedData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnDataReceived value)? receivedData,
    required TResult orElse(),
  }) {
    if (receivedData != null) {
      return receivedData(this);
    }
    return orElse();
  }
}

abstract class OnDataReceived implements ControlsPageAction {
  const factory OnDataReceived({required final String data}) =
      _$OnDataReceivedImpl;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$OnDataReceivedImplCopyWith<_$OnDataReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
