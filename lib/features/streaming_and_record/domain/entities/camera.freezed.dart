// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'camera.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CameraTearOff {
  const _$CameraTearOff();

  _Camera call(
      {required int id, required String name, required String recentPicture}) {
    return _Camera(
      id: id,
      name: name,
      recentPicture: recentPicture,
    );
  }
}

/// @nodoc
const $Camera = _$CameraTearOff();

/// @nodoc
mixin _$Camera {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get recentPicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraCopyWith<Camera> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraCopyWith<$Res> {
  factory $CameraCopyWith(Camera value, $Res Function(Camera) then) =
      _$CameraCopyWithImpl<$Res>;
  $Res call({int id, String name, String recentPicture});
}

/// @nodoc
class _$CameraCopyWithImpl<$Res> implements $CameraCopyWith<$Res> {
  _$CameraCopyWithImpl(this._value, this._then);

  final Camera _value;
  // ignore: unused_field
  final $Res Function(Camera) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? recentPicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recentPicture: recentPicture == freezed
          ? _value.recentPicture
          : recentPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CameraCopyWith<$Res> implements $CameraCopyWith<$Res> {
  factory _$CameraCopyWith(_Camera value, $Res Function(_Camera) then) =
      __$CameraCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String recentPicture});
}

/// @nodoc
class __$CameraCopyWithImpl<$Res> extends _$CameraCopyWithImpl<$Res>
    implements _$CameraCopyWith<$Res> {
  __$CameraCopyWithImpl(_Camera _value, $Res Function(_Camera) _then)
      : super(_value, (v) => _then(v as _Camera));

  @override
  _Camera get _value => super._value as _Camera;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? recentPicture = freezed,
  }) {
    return _then(_Camera(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      recentPicture: recentPicture == freezed
          ? _value.recentPicture
          : recentPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Camera implements _Camera {
  const _$_Camera(
      {required this.id, required this.name, required this.recentPicture});

  @override
  final int id;
  @override
  final String name;
  @override
  final String recentPicture;

  @override
  String toString() {
    return 'Camera(id: $id, name: $name, recentPicture: $recentPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Camera &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.recentPicture, recentPicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(recentPicture));

  @JsonKey(ignore: true)
  @override
  _$CameraCopyWith<_Camera> get copyWith =>
      __$CameraCopyWithImpl<_Camera>(this, _$identity);
}

abstract class _Camera implements Camera {
  const factory _Camera(
      {required int id,
      required String name,
      required String recentPicture}) = _$_Camera;

  @override
  int get id;
  @override
  String get name;
  @override
  String get recentPicture;
  @override
  @JsonKey(ignore: true)
  _$CameraCopyWith<_Camera> get copyWith => throw _privateConstructorUsedError;
}
