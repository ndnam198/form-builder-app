// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormData {
  String get id;
  FormTitle get formTitle;
  List<FormQuestion> get questions;
  DateTime? get submittedAt;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormDataCopyWith<FormData> get copyWith =>
      _$FormDataCopyWithImpl<FormData>(this as FormData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, formTitle,
      const DeepCollectionEquality().hash(questions), submittedAt);

  @override
  String toString() {
    return 'FormData(id: $id, formTitle: $formTitle, questions: $questions, submittedAt: $submittedAt)';
  }
}

/// @nodoc
abstract mixin class $FormDataCopyWith<$Res> {
  factory $FormDataCopyWith(FormData value, $Res Function(FormData) _then) =
      _$FormDataCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      FormTitle formTitle,
      List<FormQuestion> questions,
      DateTime? submittedAt});

  $FormTitleCopyWith<$Res> get formTitle;
}

/// @nodoc
class _$FormDataCopyWithImpl<$Res> implements $FormDataCopyWith<$Res> {
  _$FormDataCopyWithImpl(this._self, this._then);

  final FormData _self;
  final $Res Function(FormData) _then;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? formTitle = null,
    Object? questions = null,
    Object? submittedAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      formTitle: null == formTitle
          ? _self.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as FormTitle,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FormQuestion>,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormTitleCopyWith<$Res> get formTitle {
    return $FormTitleCopyWith<$Res>(_self.formTitle, (value) {
      return _then(_self.copyWith(formTitle: value));
    });
  }
}

/// @nodoc

class _FormData extends FormData {
  const _FormData(
      {required this.id,
      this.formTitle = FormTitle.empty,
      final List<FormQuestion> questions = const [],
      this.submittedAt})
      : _questions = questions,
        super._();

  @override
  final String id;
  @override
  @JsonKey()
  final FormTitle formTitle;
  final List<FormQuestion> _questions;
  @override
  @JsonKey()
  List<FormQuestion> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  final DateTime? submittedAt;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormDataCopyWith<_FormData> get copyWith =>
      __$FormDataCopyWithImpl<_FormData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, formTitle,
      const DeepCollectionEquality().hash(_questions), submittedAt);

  @override
  String toString() {
    return 'FormData(id: $id, formTitle: $formTitle, questions: $questions, submittedAt: $submittedAt)';
  }
}

/// @nodoc
abstract mixin class _$FormDataCopyWith<$Res>
    implements $FormDataCopyWith<$Res> {
  factory _$FormDataCopyWith(_FormData value, $Res Function(_FormData) _then) =
      __$FormDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      FormTitle formTitle,
      List<FormQuestion> questions,
      DateTime? submittedAt});

  @override
  $FormTitleCopyWith<$Res> get formTitle;
}

/// @nodoc
class __$FormDataCopyWithImpl<$Res> implements _$FormDataCopyWith<$Res> {
  __$FormDataCopyWithImpl(this._self, this._then);

  final _FormData _self;
  final $Res Function(_FormData) _then;

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? formTitle = null,
    Object? questions = null,
    Object? submittedAt = freezed,
  }) {
    return _then(_FormData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      formTitle: null == formTitle
          ? _self.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as FormTitle,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FormQuestion>,
      submittedAt: freezed == submittedAt
          ? _self.submittedAt
          : submittedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  /// Create a copy of FormData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FormTitleCopyWith<$Res> get formTitle {
    return $FormTitleCopyWith<$Res>(_self.formTitle, (value) {
      return _then(_self.copyWith(formTitle: value));
    });
  }
}

// dart format on
