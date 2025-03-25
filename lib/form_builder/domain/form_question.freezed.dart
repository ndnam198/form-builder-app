// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormQuestion {
  String get id;
  String get question;
  QuestionType get type;
  bool get isRequired;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormQuestionCopyWith<FormQuestion> get copyWith =>
      _$FormQuestionCopyWithImpl<FormQuestion>(
          this as FormQuestion, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormQuestion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, question, type, isRequired);

  @override
  String toString() {
    return 'FormQuestion(id: $id, question: $question, type: $type, isRequired: $isRequired)';
  }
}

/// @nodoc
abstract mixin class $FormQuestionCopyWith<$Res> {
  factory $FormQuestionCopyWith(
          FormQuestion value, $Res Function(FormQuestion) _then) =
      _$FormQuestionCopyWithImpl;
  @useResult
  $Res call({String id, String question, QuestionType type, bool isRequired});
}

/// @nodoc
class _$FormQuestionCopyWithImpl<$Res> implements $FormQuestionCopyWith<$Res> {
  _$FormQuestionCopyWithImpl(this._self, this._then);

  final FormQuestion _self;
  final $Res Function(FormQuestion) _then;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? isRequired = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class FormQuestionMultiChoice implements FormQuestion {
  const FormQuestionMultiChoice(
      {required this.id,
      this.question = '',
      this.type = QuestionType.multiChoice,
      final List<Choice> choices = const [],
      this.isRequired = false,
      this.selectedChoiceId = '',
      this.other})
      : _choices = choices;

  @override
  final String id;
  @override
  @JsonKey()
  final String question;
  @override
  @JsonKey()
  final QuestionType type;
  final List<Choice> _choices;
  @JsonKey()
  List<Choice> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  @JsonKey()
  final bool isRequired;
  @JsonKey()
  final String selectedChoiceId;
  final Choice? other;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormQuestionMultiChoiceCopyWith<FormQuestionMultiChoice> get copyWith =>
      _$FormQuestionMultiChoiceCopyWithImpl<FormQuestionMultiChoice>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormQuestionMultiChoice &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.selectedChoiceId, selectedChoiceId) ||
                other.selectedChoiceId == selectedChoiceId) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      type,
      const DeepCollectionEquality().hash(_choices),
      isRequired,
      selectedChoiceId,
      other);

  @override
  String toString() {
    return 'FormQuestion.multiChoice(id: $id, question: $question, type: $type, choices: $choices, isRequired: $isRequired, selectedChoiceId: $selectedChoiceId, other: $other)';
  }
}

/// @nodoc
abstract mixin class $FormQuestionMultiChoiceCopyWith<$Res>
    implements $FormQuestionCopyWith<$Res> {
  factory $FormQuestionMultiChoiceCopyWith(FormQuestionMultiChoice value,
          $Res Function(FormQuestionMultiChoice) _then) =
      _$FormQuestionMultiChoiceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      QuestionType type,
      List<Choice> choices,
      bool isRequired,
      String selectedChoiceId,
      Choice? other});

  $ChoiceCopyWith<$Res>? get other;
}

/// @nodoc
class _$FormQuestionMultiChoiceCopyWithImpl<$Res>
    implements $FormQuestionMultiChoiceCopyWith<$Res> {
  _$FormQuestionMultiChoiceCopyWithImpl(this._self, this._then);

  final FormQuestionMultiChoice _self;
  final $Res Function(FormQuestionMultiChoice) _then;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? type = null,
    Object? choices = null,
    Object? isRequired = null,
    Object? selectedChoiceId = null,
    Object? other = freezed,
  }) {
    return _then(FormQuestionMultiChoice(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      choices: null == choices
          ? _self._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedChoiceId: null == selectedChoiceId
          ? _self.selectedChoiceId
          : selectedChoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      other: freezed == other
          ? _self.other
          : other // ignore: cast_nullable_to_non_nullable
              as Choice?,
    ));
  }

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceCopyWith<$Res>? get other {
    if (_self.other == null) {
      return null;
    }

    return $ChoiceCopyWith<$Res>(_self.other!, (value) {
      return _then(_self.copyWith(other: value));
    });
  }
}

/// @nodoc

class FormQuestionParagraph implements FormQuestion {
  const FormQuestionParagraph(
      {required this.id,
      this.question = '',
      this.answer = '',
      this.type = QuestionType.paragraph,
      this.isRequired = false});

  @override
  final String id;
  @override
  @JsonKey()
  final String question;
  @JsonKey()
  final String answer;
  @override
  @JsonKey()
  final QuestionType type;
  @override
  @JsonKey()
  final bool isRequired;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormQuestionParagraphCopyWith<FormQuestionParagraph> get copyWith =>
      _$FormQuestionParagraphCopyWithImpl<FormQuestionParagraph>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormQuestionParagraph &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, question, answer, type, isRequired);

  @override
  String toString() {
    return 'FormQuestion.paragraph(id: $id, question: $question, answer: $answer, type: $type, isRequired: $isRequired)';
  }
}

/// @nodoc
abstract mixin class $FormQuestionParagraphCopyWith<$Res>
    implements $FormQuestionCopyWith<$Res> {
  factory $FormQuestionParagraphCopyWith(FormQuestionParagraph value,
          $Res Function(FormQuestionParagraph) _then) =
      _$FormQuestionParagraphCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      String answer,
      QuestionType type,
      bool isRequired});
}

/// @nodoc
class _$FormQuestionParagraphCopyWithImpl<$Res>
    implements $FormQuestionParagraphCopyWith<$Res> {
  _$FormQuestionParagraphCopyWithImpl(this._self, this._then);

  final FormQuestionParagraph _self;
  final $Res Function(FormQuestionParagraph) _then;

  /// Create a copy of FormQuestion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? answer = null,
    Object? type = null,
    Object? isRequired = null,
  }) {
    return _then(FormQuestionParagraph(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
