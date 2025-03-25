// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_title.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormTitle {
  String get name;
  String get description;

  /// Create a copy of FormTitle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormTitleCopyWith<FormTitle> get copyWith =>
      _$FormTitleCopyWithImpl<FormTitle>(this as FormTitle, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormTitle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'FormTitle(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class $FormTitleCopyWith<$Res> {
  factory $FormTitleCopyWith(FormTitle value, $Res Function(FormTitle) _then) =
      _$FormTitleCopyWithImpl;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$FormTitleCopyWithImpl<$Res> implements $FormTitleCopyWith<$Res> {
  _$FormTitleCopyWithImpl(this._self, this._then);

  final FormTitle _self;
  final $Res Function(FormTitle) _then;

  /// Create a copy of FormTitle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _FormTitle implements FormTitle {
  const _FormTitle({required this.name, required this.description});

  @override
  final String name;
  @override
  final String description;

  /// Create a copy of FormTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormTitleCopyWith<_FormTitle> get copyWith =>
      __$FormTitleCopyWithImpl<_FormTitle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormTitle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @override
  String toString() {
    return 'FormTitle(name: $name, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$FormTitleCopyWith<$Res>
    implements $FormTitleCopyWith<$Res> {
  factory _$FormTitleCopyWith(
          _FormTitle value, $Res Function(_FormTitle) _then) =
      __$FormTitleCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$FormTitleCopyWithImpl<$Res> implements _$FormTitleCopyWith<$Res> {
  __$FormTitleCopyWithImpl(this._self, this._then);

  final _FormTitle _self;
  final $Res Function(_FormTitle) _then;

  /// Create a copy of FormTitle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_FormTitle(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
