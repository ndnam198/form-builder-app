// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_form_builder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleFormBuilderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SimpleFormBuilderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SimpleFormBuilderEvent()';
  }
}

/// @nodoc
class $SimpleFormBuilderEventCopyWith<$Res> {
  $SimpleFormBuilderEventCopyWith(
      SimpleFormBuilderEvent _, $Res Function(SimpleFormBuilderEvent) __);
}

/// @nodoc

class SimpleFormBuilderEventUpdateFormTitle implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventUpdateFormTitle({this.name, this.descrription});

  final String? name;
  final String? descrription;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventUpdateFormTitleCopyWith<
          SimpleFormBuilderEventUpdateFormTitle>
      get copyWith => _$SimpleFormBuilderEventUpdateFormTitleCopyWithImpl<
          SimpleFormBuilderEventUpdateFormTitle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventUpdateFormTitle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.descrription, descrription) ||
                other.descrription == descrription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, descrription);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.updateFormTitle(name: $name, descrription: $descrription)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventUpdateFormTitleCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventUpdateFormTitleCopyWith(
          SimpleFormBuilderEventUpdateFormTitle value,
          $Res Function(SimpleFormBuilderEventUpdateFormTitle) _then) =
      _$SimpleFormBuilderEventUpdateFormTitleCopyWithImpl;
  @useResult
  $Res call({String? name, String? descrription});
}

/// @nodoc
class _$SimpleFormBuilderEventUpdateFormTitleCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventUpdateFormTitleCopyWith<$Res> {
  _$SimpleFormBuilderEventUpdateFormTitleCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventUpdateFormTitle _self;
  final $Res Function(SimpleFormBuilderEventUpdateFormTitle) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? descrription = freezed,
  }) {
    return _then(SimpleFormBuilderEventUpdateFormTitle(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      descrription: freezed == descrription
          ? _self.descrription
          : descrription // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventAddQuestion implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventAddQuestion(
      {required this.type, required this.question});

  final QuestionType type;
  final String question;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventAddQuestionCopyWith<SimpleFormBuilderEventAddQuestion>
      get copyWith => _$SimpleFormBuilderEventAddQuestionCopyWithImpl<
          SimpleFormBuilderEventAddQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventAddQuestion &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, question);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.addQuestion(type: $type, question: $question)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventAddQuestionCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventAddQuestionCopyWith(
          SimpleFormBuilderEventAddQuestion value,
          $Res Function(SimpleFormBuilderEventAddQuestion) _then) =
      _$SimpleFormBuilderEventAddQuestionCopyWithImpl;
  @useResult
  $Res call({QuestionType type, String question});
}

/// @nodoc
class _$SimpleFormBuilderEventAddQuestionCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventAddQuestionCopyWith<$Res> {
  _$SimpleFormBuilderEventAddQuestionCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventAddQuestion _self;
  final $Res Function(SimpleFormBuilderEventAddQuestion) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? question = null,
  }) {
    return _then(SimpleFormBuilderEventAddQuestion(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
      question: null == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventUpdateQuestion implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventUpdateQuestion(
      {required this.questionId, this.question, this.isRequired});

  final String questionId;
  final String? question;
  final bool? isRequired;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventUpdateQuestionCopyWith<
          SimpleFormBuilderEventUpdateQuestion>
      get copyWith => _$SimpleFormBuilderEventUpdateQuestionCopyWithImpl<
          SimpleFormBuilderEventUpdateQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventUpdateQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionId, question, isRequired);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.updateQuestion(questionId: $questionId, question: $question, isRequired: $isRequired)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventUpdateQuestionCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventUpdateQuestionCopyWith(
          SimpleFormBuilderEventUpdateQuestion value,
          $Res Function(SimpleFormBuilderEventUpdateQuestion) _then) =
      _$SimpleFormBuilderEventUpdateQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId, String? question, bool? isRequired});
}

/// @nodoc
class _$SimpleFormBuilderEventUpdateQuestionCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventUpdateQuestionCopyWith<$Res> {
  _$SimpleFormBuilderEventUpdateQuestionCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventUpdateQuestion _self;
  final $Res Function(SimpleFormBuilderEventUpdateQuestion) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? question = freezed,
    Object? isRequired = freezed,
  }) {
    return _then(SimpleFormBuilderEventUpdateQuestion(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: freezed == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      isRequired: freezed == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventAddChoice implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventAddChoice(
      {required this.questionId,
      required this.description,
      required this.isRequired});

  final String questionId;
  final String description;
  final bool isRequired;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventAddChoiceCopyWith<SimpleFormBuilderEventAddChoice>
      get copyWith => _$SimpleFormBuilderEventAddChoiceCopyWithImpl<
          SimpleFormBuilderEventAddChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventAddChoice &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionId, description, isRequired);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.addChoice(questionId: $questionId, description: $description, isRequired: $isRequired)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventAddChoiceCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventAddChoiceCopyWith(
          SimpleFormBuilderEventAddChoice value,
          $Res Function(SimpleFormBuilderEventAddChoice) _then) =
      _$SimpleFormBuilderEventAddChoiceCopyWithImpl;
  @useResult
  $Res call({String questionId, String description, bool isRequired});
}

/// @nodoc
class _$SimpleFormBuilderEventAddChoiceCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventAddChoiceCopyWith<$Res> {
  _$SimpleFormBuilderEventAddChoiceCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventAddChoice _self;
  final $Res Function(SimpleFormBuilderEventAddChoice) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? description = null,
    Object? isRequired = null,
  }) {
    return _then(SimpleFormBuilderEventAddChoice(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: null == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventUpdateQuestionType
    implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventUpdateQuestionType(
      {required this.questionId, required this.newType});

  final String questionId;
  final QuestionType newType;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventUpdateQuestionTypeCopyWith<
          SimpleFormBuilderEventUpdateQuestionType>
      get copyWith => _$SimpleFormBuilderEventUpdateQuestionTypeCopyWithImpl<
          SimpleFormBuilderEventUpdateQuestionType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventUpdateQuestionType &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.newType, newType) || other.newType == newType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, newType);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.updateQuestionType(questionId: $questionId, newType: $newType)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventUpdateQuestionTypeCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventUpdateQuestionTypeCopyWith(
          SimpleFormBuilderEventUpdateQuestionType value,
          $Res Function(SimpleFormBuilderEventUpdateQuestionType) _then) =
      _$SimpleFormBuilderEventUpdateQuestionTypeCopyWithImpl;
  @useResult
  $Res call({String questionId, QuestionType newType});
}

/// @nodoc
class _$SimpleFormBuilderEventUpdateQuestionTypeCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventUpdateQuestionTypeCopyWith<$Res> {
  _$SimpleFormBuilderEventUpdateQuestionTypeCopyWithImpl(
      this._self, this._then);

  final SimpleFormBuilderEventUpdateQuestionType _self;
  final $Res Function(SimpleFormBuilderEventUpdateQuestionType) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? newType = null,
  }) {
    return _then(SimpleFormBuilderEventUpdateQuestionType(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      newType: null == newType
          ? _self.newType
          : newType // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventRemoveQuestion implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventRemoveQuestion(this.questionId);

  final String questionId;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventRemoveQuestionCopyWith<
          SimpleFormBuilderEventRemoveQuestion>
      get copyWith => _$SimpleFormBuilderEventRemoveQuestionCopyWithImpl<
          SimpleFormBuilderEventRemoveQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventRemoveQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.removeQuestion(questionId: $questionId)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventRemoveQuestionCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventRemoveQuestionCopyWith(
          SimpleFormBuilderEventRemoveQuestion value,
          $Res Function(SimpleFormBuilderEventRemoveQuestion) _then) =
      _$SimpleFormBuilderEventRemoveQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class _$SimpleFormBuilderEventRemoveQuestionCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventRemoveQuestionCopyWith<$Res> {
  _$SimpleFormBuilderEventRemoveQuestionCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventRemoveQuestion _self;
  final $Res Function(SimpleFormBuilderEventRemoveQuestion) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
  }) {
    return _then(SimpleFormBuilderEventRemoveQuestion(
      null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventUpdateChoice implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventUpdateChoice(
      {required this.questionId,
      required this.choiceId,
      this.isRequired,
      this.description});

  final String questionId;
  final String choiceId;
  final bool? isRequired;
  final String? description;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventUpdateChoiceCopyWith<
          SimpleFormBuilderEventUpdateChoice>
      get copyWith => _$SimpleFormBuilderEventUpdateChoiceCopyWithImpl<
          SimpleFormBuilderEventUpdateChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventUpdateChoice &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, questionId, choiceId, isRequired, description);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.updateChoiceOptions(questionId: $questionId, choiceId: $choiceId, isRequired: $isRequired, description: $description)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventUpdateChoiceCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventUpdateChoiceCopyWith(
          SimpleFormBuilderEventUpdateChoice value,
          $Res Function(SimpleFormBuilderEventUpdateChoice) _then) =
      _$SimpleFormBuilderEventUpdateChoiceCopyWithImpl;
  @useResult
  $Res call(
      {String questionId,
      String choiceId,
      bool? isRequired,
      String? description});
}

/// @nodoc
class _$SimpleFormBuilderEventUpdateChoiceCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventUpdateChoiceCopyWith<$Res> {
  _$SimpleFormBuilderEventUpdateChoiceCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventUpdateChoice _self;
  final $Res Function(SimpleFormBuilderEventUpdateChoice) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? choiceId = null,
    Object? isRequired = freezed,
    Object? description = freezed,
  }) {
    return _then(SimpleFormBuilderEventUpdateChoice(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      choiceId: null == choiceId
          ? _self.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String,
      isRequired: freezed == isRequired
          ? _self.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventRemoveChoice implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventRemoveChoice(
      {required this.questionId, required this.choiceId});

  final String questionId;
  final String choiceId;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventRemoveChoiceCopyWith<
          SimpleFormBuilderEventRemoveChoice>
      get copyWith => _$SimpleFormBuilderEventRemoveChoiceCopyWithImpl<
          SimpleFormBuilderEventRemoveChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventRemoveChoice &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, choiceId);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.removeChoice(questionId: $questionId, choiceId: $choiceId)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventRemoveChoiceCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventRemoveChoiceCopyWith(
          SimpleFormBuilderEventRemoveChoice value,
          $Res Function(SimpleFormBuilderEventRemoveChoice) _then) =
      _$SimpleFormBuilderEventRemoveChoiceCopyWithImpl;
  @useResult
  $Res call({String questionId, String choiceId});
}

/// @nodoc
class _$SimpleFormBuilderEventRemoveChoiceCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventRemoveChoiceCopyWith<$Res> {
  _$SimpleFormBuilderEventRemoveChoiceCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventRemoveChoice _self;
  final $Res Function(SimpleFormBuilderEventRemoveChoice) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? choiceId = null,
  }) {
    return _then(SimpleFormBuilderEventRemoveChoice(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      choiceId: null == choiceId
          ? _self.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventAnswerMultipleChoiceQuestion
    implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventAnswerMultipleChoiceQuestion(
      {required this.questionId, required this.choiceId});

  final String questionId;
  final String choiceId;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWith<
          SimpleFormBuilderEventAnswerMultipleChoiceQuestion>
      get copyWith =>
          _$SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWithImpl<
                  SimpleFormBuilderEventAnswerMultipleChoiceQuestion>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventAnswerMultipleChoiceQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, choiceId);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.answerMultipleChoiceQuestion(questionId: $questionId, choiceId: $choiceId)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWith<
    $Res> implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWith(
          SimpleFormBuilderEventAnswerMultipleChoiceQuestion value,
          $Res Function(SimpleFormBuilderEventAnswerMultipleChoiceQuestion)
              _then) =
      _$SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId, String choiceId});
}

/// @nodoc
class _$SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWithImpl<$Res>
    implements
        $SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWith<$Res> {
  _$SimpleFormBuilderEventAnswerMultipleChoiceQuestionCopyWithImpl(
      this._self, this._then);

  final SimpleFormBuilderEventAnswerMultipleChoiceQuestion _self;
  final $Res Function(SimpleFormBuilderEventAnswerMultipleChoiceQuestion) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? choiceId = null,
  }) {
    return _then(SimpleFormBuilderEventAnswerMultipleChoiceQuestion(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      choiceId: null == choiceId
          ? _self.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventAnswerParagraphQuestion
    implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventAnswerParagraphQuestion(
      {required this.questionId, required this.answer});

  final String questionId;
  final String answer;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventAnswerParagraphQuestionCopyWith<
          SimpleFormBuilderEventAnswerParagraphQuestion>
      get copyWith =>
          _$SimpleFormBuilderEventAnswerParagraphQuestionCopyWithImpl<
              SimpleFormBuilderEventAnswerParagraphQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventAnswerParagraphQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, answer);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.answerParagraphQuestion(questionId: $questionId, answer: $answer)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventAnswerParagraphQuestionCopyWith<
    $Res> implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventAnswerParagraphQuestionCopyWith(
          SimpleFormBuilderEventAnswerParagraphQuestion value,
          $Res Function(SimpleFormBuilderEventAnswerParagraphQuestion) _then) =
      _$SimpleFormBuilderEventAnswerParagraphQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId, String answer});
}

/// @nodoc
class _$SimpleFormBuilderEventAnswerParagraphQuestionCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventAnswerParagraphQuestionCopyWith<$Res> {
  _$SimpleFormBuilderEventAnswerParagraphQuestionCopyWithImpl(
      this._self, this._then);

  final SimpleFormBuilderEventAnswerParagraphQuestion _self;
  final $Res Function(SimpleFormBuilderEventAnswerParagraphQuestion) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? answer = null,
  }) {
    return _then(SimpleFormBuilderEventAnswerParagraphQuestion(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _self.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventAddUserChoice implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventAddUserChoice(
      {required this.questionId, this.description});

  final String questionId;
  final String? description;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderEventAddUserChoiceCopyWith<
          SimpleFormBuilderEventAddUserChoice>
      get copyWith => _$SimpleFormBuilderEventAddUserChoiceCopyWithImpl<
          SimpleFormBuilderEventAddUserChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventAddUserChoice &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, description);

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.addUserChoice(questionId: $questionId, description: $description)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderEventAddUserChoiceCopyWith<$Res>
    implements $SimpleFormBuilderEventCopyWith<$Res> {
  factory $SimpleFormBuilderEventAddUserChoiceCopyWith(
          SimpleFormBuilderEventAddUserChoice value,
          $Res Function(SimpleFormBuilderEventAddUserChoice) _then) =
      _$SimpleFormBuilderEventAddUserChoiceCopyWithImpl;
  @useResult
  $Res call({String questionId, String? description});
}

/// @nodoc
class _$SimpleFormBuilderEventAddUserChoiceCopyWithImpl<$Res>
    implements $SimpleFormBuilderEventAddUserChoiceCopyWith<$Res> {
  _$SimpleFormBuilderEventAddUserChoiceCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderEventAddUserChoice _self;
  final $Res Function(SimpleFormBuilderEventAddUserChoice) _then;

  /// Create a copy of SimpleFormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? description = freezed,
  }) {
    return _then(SimpleFormBuilderEventAddUserChoice(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class SimpleFormBuilderEventCreateForm implements SimpleFormBuilderEvent {
  const SimpleFormBuilderEventCreateForm();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderEventCreateForm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SimpleFormBuilderEvent.createForm()';
  }
}

/// @nodoc
mixin _$SimpleFormBuilderState {
  FormTitle get formTitle;
  List<FormQuestion> get questions;
  bool get isPreviewing;
  FormBuilderError get error;
  bool get isLoading;

  /// Create a copy of SimpleFormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SimpleFormBuilderStateCopyWith<SimpleFormBuilderState> get copyWith =>
      _$SimpleFormBuilderStateCopyWithImpl<SimpleFormBuilderState>(
          this as SimpleFormBuilderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SimpleFormBuilderState &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            const DeepCollectionEquality().equals(other.questions, questions) &&
            (identical(other.isPreviewing, isPreviewing) ||
                other.isPreviewing == isPreviewing) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formTitle,
      const DeepCollectionEquality().hash(questions),
      isPreviewing,
      error,
      isLoading);

  @override
  String toString() {
    return 'SimpleFormBuilderState(formTitle: $formTitle, questions: $questions, isPreviewing: $isPreviewing, error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $SimpleFormBuilderStateCopyWith<$Res> {
  factory $SimpleFormBuilderStateCopyWith(SimpleFormBuilderState value,
          $Res Function(SimpleFormBuilderState) _then) =
      _$SimpleFormBuilderStateCopyWithImpl;
  @useResult
  $Res call(
      {FormTitle formTitle,
      List<FormQuestion> questions,
      bool isPreviewing,
      FormBuilderError error,
      bool isLoading});

  $FormTitleCopyWith<$Res> get formTitle;
}

/// @nodoc
class _$SimpleFormBuilderStateCopyWithImpl<$Res>
    implements $SimpleFormBuilderStateCopyWith<$Res> {
  _$SimpleFormBuilderStateCopyWithImpl(this._self, this._then);

  final SimpleFormBuilderState _self;
  final $Res Function(SimpleFormBuilderState) _then;

  /// Create a copy of SimpleFormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formTitle = null,
    Object? questions = null,
    Object? isPreviewing = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      formTitle: null == formTitle
          ? _self.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as FormTitle,
      questions: null == questions
          ? _self.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FormQuestion>,
      isPreviewing: null == isPreviewing
          ? _self.isPreviewing
          : isPreviewing // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as FormBuilderError,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SimpleFormBuilderState
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

class _SimpleFormBuilderState implements SimpleFormBuilderState {
  const _SimpleFormBuilderState(
      {this.formTitle = FormTitle.empty,
      final List<FormQuestion> questions = const [],
      this.isPreviewing = false,
      this.error = FormBuilderError.none,
      this.isLoading = false})
      : _questions = questions;

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
  @JsonKey()
  final bool isPreviewing;
  @override
  @JsonKey()
  final FormBuilderError error;
  @override
  @JsonKey()
  final bool isLoading;

  /// Create a copy of SimpleFormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SimpleFormBuilderStateCopyWith<_SimpleFormBuilderState> get copyWith =>
      __$SimpleFormBuilderStateCopyWithImpl<_SimpleFormBuilderState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SimpleFormBuilderState &&
            (identical(other.formTitle, formTitle) ||
                other.formTitle == formTitle) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.isPreviewing, isPreviewing) ||
                other.isPreviewing == isPreviewing) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      formTitle,
      const DeepCollectionEquality().hash(_questions),
      isPreviewing,
      error,
      isLoading);

  @override
  String toString() {
    return 'SimpleFormBuilderState(formTitle: $formTitle, questions: $questions, isPreviewing: $isPreviewing, error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$SimpleFormBuilderStateCopyWith<$Res>
    implements $SimpleFormBuilderStateCopyWith<$Res> {
  factory _$SimpleFormBuilderStateCopyWith(_SimpleFormBuilderState value,
          $Res Function(_SimpleFormBuilderState) _then) =
      __$SimpleFormBuilderStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FormTitle formTitle,
      List<FormQuestion> questions,
      bool isPreviewing,
      FormBuilderError error,
      bool isLoading});

  @override
  $FormTitleCopyWith<$Res> get formTitle;
}

/// @nodoc
class __$SimpleFormBuilderStateCopyWithImpl<$Res>
    implements _$SimpleFormBuilderStateCopyWith<$Res> {
  __$SimpleFormBuilderStateCopyWithImpl(this._self, this._then);

  final _SimpleFormBuilderState _self;
  final $Res Function(_SimpleFormBuilderState) _then;

  /// Create a copy of SimpleFormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? formTitle = null,
    Object? questions = null,
    Object? isPreviewing = null,
    Object? error = null,
    Object? isLoading = null,
  }) {
    return _then(_SimpleFormBuilderState(
      formTitle: null == formTitle
          ? _self.formTitle
          : formTitle // ignore: cast_nullable_to_non_nullable
              as FormTitle,
      questions: null == questions
          ? _self._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<FormQuestion>,
      isPreviewing: null == isPreviewing
          ? _self.isPreviewing
          : isPreviewing // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as FormBuilderError,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  /// Create a copy of SimpleFormBuilderState
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
