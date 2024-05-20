// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_page_action.f.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConnectionPageAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function(String port) onConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function(String port)? onConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function(String port)? onConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNotConnected value) notConnected,
    required TResult Function(OnConnected value) onConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnNotConnected value)? notConnected,
    TResult? Function(OnConnected value)? onConnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNotConnected value)? notConnected,
    TResult Function(OnConnected value)? onConnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionPageActionCopyWith<$Res> {
  factory $ConnectionPageActionCopyWith(ConnectionPageAction value,
          $Res Function(ConnectionPageAction) then) =
      _$ConnectionPageActionCopyWithImpl<$Res, ConnectionPageAction>;
}

/// @nodoc
class _$ConnectionPageActionCopyWithImpl<$Res,
        $Val extends ConnectionPageAction>
    implements $ConnectionPageActionCopyWith<$Res> {
  _$ConnectionPageActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnNotConnectedImplCopyWith<$Res> {
  factory _$$OnNotConnectedImplCopyWith(_$OnNotConnectedImpl value,
          $Res Function(_$OnNotConnectedImpl) then) =
      __$$OnNotConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnNotConnectedImplCopyWithImpl<$Res>
    extends _$ConnectionPageActionCopyWithImpl<$Res, _$OnNotConnectedImpl>
    implements _$$OnNotConnectedImplCopyWith<$Res> {
  __$$OnNotConnectedImplCopyWithImpl(
      _$OnNotConnectedImpl _value, $Res Function(_$OnNotConnectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnNotConnectedImpl implements OnNotConnected {
  const _$OnNotConnectedImpl();

  @override
  String toString() {
    return 'ConnectionPageAction.notConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnNotConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function(String port) onConnected,
  }) {
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function(String port)? onConnected,
  }) {
    return notConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function(String port)? onConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNotConnected value) notConnected,
    required TResult Function(OnConnected value) onConnected,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnNotConnected value)? notConnected,
    TResult? Function(OnConnected value)? onConnected,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNotConnected value)? notConnected,
    TResult Function(OnConnected value)? onConnected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class OnNotConnected implements ConnectionPageAction {
  const factory OnNotConnected() = _$OnNotConnectedImpl;
}

/// @nodoc
abstract class _$$OnConnectedImplCopyWith<$Res> {
  factory _$$OnConnectedImplCopyWith(
          _$OnConnectedImpl value, $Res Function(_$OnConnectedImpl) then) =
      __$$OnConnectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String port});
}

/// @nodoc
class __$$OnConnectedImplCopyWithImpl<$Res>
    extends _$ConnectionPageActionCopyWithImpl<$Res, _$OnConnectedImpl>
    implements _$$OnConnectedImplCopyWith<$Res> {
  __$$OnConnectedImplCopyWithImpl(
      _$OnConnectedImpl _value, $Res Function(_$OnConnectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? port = null,
  }) {
    return _then(_$OnConnectedImpl(
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnConnectedImpl implements OnConnected {
  const _$OnConnectedImpl({required this.port});

  @override
  final String port;

  @override
  String toString() {
    return 'ConnectionPageAction.onConnected(port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnConnectedImpl &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, port);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnConnectedImplCopyWith<_$OnConnectedImpl> get copyWith =>
      __$$OnConnectedImplCopyWithImpl<_$OnConnectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function(String port) onConnected,
  }) {
    return onConnected(port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function(String port)? onConnected,
  }) {
    return onConnected?.call(port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function(String port)? onConnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnNotConnected value) notConnected,
    required TResult Function(OnConnected value) onConnected,
  }) {
    return onConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnNotConnected value)? notConnected,
    TResult? Function(OnConnected value)? onConnected,
  }) {
    return onConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnNotConnected value)? notConnected,
    TResult Function(OnConnected value)? onConnected,
    required TResult orElse(),
  }) {
    if (onConnected != null) {
      return onConnected(this);
    }
    return orElse();
  }
}

abstract class OnConnected implements ConnectionPageAction {
  const factory OnConnected({required final String port}) = _$OnConnectedImpl;

  String get port;
  @JsonKey(ignore: true)
  _$$OnConnectedImplCopyWith<_$OnConnectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
