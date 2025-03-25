// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Choice {
  String get id;
  String get description;
  bool get isSelected;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceCopyWith<Choice> get copyWith =>
      _$ChoiceCopyWithImpl<Choice>(this as Choice, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Choice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description, isSelected);

  @override
  String toString() {
    return 'Choice(id: $id, description: $description, isSelected: $isSelected)';
  }
}

/// @nodoc
abstract mixin class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) _then) =
      _$ChoiceCopyWithImpl;
  @useResult
  $Res call({String id, String description, bool isSelected});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res> implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._self, this._then);

  final Choice _self;
  final $Res Function(Choice) _then;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isSelected = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ChoicePredefined implements Choice {
  const ChoicePredefined(
      {required this.id,
      this.description = '',
      this.isRequired = false,
      this.isSelected = false});

  @override
  final String id;
  @override
  @JsonKey()
  final String description;
  @JsonKey()
  final bool isRequired;
  @override
  @JsonKey()
  final bool isSelected;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoicePredefinedCopyWith<ChoicePredefined> get copyWith =>
      _$ChoicePredefinedCopyWithImpl<ChoicePredefined>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoicePredefined &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, description, isRequired, isSelected);

  @override
  String toString() {
    return 'Choice.predefined(id: $id, description: $description, isRequired: $isRequired, isSelected: $isSelected)';
  }
}

/// @nodoc
abstract mixin class $ChoicePredefinedCopyWith<$Res>
    implements $ChoiceCopyWith<$Res> {
  factory $ChoicePredefinedCopyWith(
          ChoicePredefined value, $Res Function(ChoicePredefined) _then) =
      _$ChoicePredefinedCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String description, bool isRequired, bool isSelected});
}

/// @nodoc
class _$ChoicePredefinedCopyWithImpl<$Res>
    implements $ChoicePredefinedCopyWith<$Res> {
  _$ChoicePredefinedCopyWithImpl(this._self, this._then);

  final ChoicePredefined _self;
  final $Res Function(ChoicePredefined) _then;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isRequired = null,
    Object? isSelected = null,
  }) {
    return _then(ChoicePredefined(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class ChoiceUserDefined implements Choice {
  const ChoiceUserDefined(
      {required this.id, this.description = '', this.isSelected = false});

  @override
  final String id;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final bool isSelected;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChoiceUserDefinedCopyWith<ChoiceUserDefined> get copyWith =>
      _$ChoiceUserDefinedCopyWithImpl<ChoiceUserDefined>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChoiceUserDefined &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, description, isSelected);

  @override
  String toString() {
    return 'Choice.userDefined(id: $id, description: $description, isSelected: $isSelected)';
  }
}

/// @nodoc
abstract mixin class $ChoiceUserDefinedCopyWith<$Res>
    implements $ChoiceCopyWith<$Res> {
  factory $ChoiceUserDefinedCopyWith(
          ChoiceUserDefined value, $Res Function(ChoiceUserDefined) _then) =
      _$ChoiceUserDefinedCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String description, bool isSelected});
}

/// @nodoc
class _$ChoiceUserDefinedCopyWithImpl<$Res>
    implements $ChoiceUserDefinedCopyWith<$Res> {
  _$ChoiceUserDefinedCopyWithImpl(this._self, this._then);

  final ChoiceUserDefined _self;
  final $Res Function(ChoiceUserDefined) _then;

  /// Create a copy of Choice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? isSelected = null,
  }) {
    return _then(ChoiceUserDefined(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _self.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
