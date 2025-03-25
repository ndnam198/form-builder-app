// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_builder_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FormBuilderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FormBuilderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FormBuilderEvent()';
  }
}

/// @nodoc
class $FormBuilderEventCopyWith<$Res> {
  $FormBuilderEventCopyWith(
      FormBuilderEvent _, $Res Function(FormBuilderEvent) __);
}

/// @nodoc

class FormBuilderEventUpdateFormTitle implements FormBuilderEvent {
  const FormBuilderEventUpdateFormTitle({this.name, this.descrription});

  final String? name;
  final String? descrription;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventUpdateFormTitleCopyWith<FormBuilderEventUpdateFormTitle>
      get copyWith => _$FormBuilderEventUpdateFormTitleCopyWithImpl<
          FormBuilderEventUpdateFormTitle>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventUpdateFormTitle &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.descrription, descrription) ||
                other.descrription == descrription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, descrription);

  @override
  String toString() {
    return 'FormBuilderEvent.updateFormTitle(name: $name, descrription: $descrription)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventUpdateFormTitleCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventUpdateFormTitleCopyWith(
          FormBuilderEventUpdateFormTitle value,
          $Res Function(FormBuilderEventUpdateFormTitle) _then) =
      _$FormBuilderEventUpdateFormTitleCopyWithImpl;
  @useResult
  $Res call({String? name, String? descrription});
}

/// @nodoc
class _$FormBuilderEventUpdateFormTitleCopyWithImpl<$Res>
    implements $FormBuilderEventUpdateFormTitleCopyWith<$Res> {
  _$FormBuilderEventUpdateFormTitleCopyWithImpl(this._self, this._then);

  final FormBuilderEventUpdateFormTitle _self;
  final $Res Function(FormBuilderEventUpdateFormTitle) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? descrription = freezed,
  }) {
    return _then(FormBuilderEventUpdateFormTitle(
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

class FormBuilderEventAddQuestion implements FormBuilderEvent {
  const FormBuilderEventAddQuestion(
      {required this.type, required this.question});

  final QuestionType type;
  final String question;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventAddQuestionCopyWith<FormBuilderEventAddQuestion>
      get copyWith => _$FormBuilderEventAddQuestionCopyWithImpl<
          FormBuilderEventAddQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventAddQuestion &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, question);

  @override
  String toString() {
    return 'FormBuilderEvent.addQuestion(type: $type, question: $question)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventAddQuestionCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventAddQuestionCopyWith(
          FormBuilderEventAddQuestion value,
          $Res Function(FormBuilderEventAddQuestion) _then) =
      _$FormBuilderEventAddQuestionCopyWithImpl;
  @useResult
  $Res call({QuestionType type, String question});
}

/// @nodoc
class _$FormBuilderEventAddQuestionCopyWithImpl<$Res>
    implements $FormBuilderEventAddQuestionCopyWith<$Res> {
  _$FormBuilderEventAddQuestionCopyWithImpl(this._self, this._then);

  final FormBuilderEventAddQuestion _self;
  final $Res Function(FormBuilderEventAddQuestion) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? question = null,
  }) {
    return _then(FormBuilderEventAddQuestion(
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

class FormBuilderEventUpdateQuestion implements FormBuilderEvent {
  const FormBuilderEventUpdateQuestion(
      {required this.questionId, this.question, final List<Choice>? choices})
      : _choices = choices;

  final String questionId;
  final String? question;

  /// only happen if type is QuestionType.multipleChoice
  final List<Choice>? _choices;

  /// only happen if type is QuestionType.multipleChoice
  List<Choice>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventUpdateQuestionCopyWith<FormBuilderEventUpdateQuestion>
      get copyWith => _$FormBuilderEventUpdateQuestionCopyWithImpl<
          FormBuilderEventUpdateQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventUpdateQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, question,
      const DeepCollectionEquality().hash(_choices));

  @override
  String toString() {
    return 'FormBuilderEvent.updateQuestion(questionId: $questionId, question: $question, choices: $choices)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventUpdateQuestionCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventUpdateQuestionCopyWith(
          FormBuilderEventUpdateQuestion value,
          $Res Function(FormBuilderEventUpdateQuestion) _then) =
      _$FormBuilderEventUpdateQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId, String? question, List<Choice>? choices});
}

/// @nodoc
class _$FormBuilderEventUpdateQuestionCopyWithImpl<$Res>
    implements $FormBuilderEventUpdateQuestionCopyWith<$Res> {
  _$FormBuilderEventUpdateQuestionCopyWithImpl(this._self, this._then);

  final FormBuilderEventUpdateQuestion _self;
  final $Res Function(FormBuilderEventUpdateQuestion) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? question = freezed,
    Object? choices = freezed,
  }) {
    return _then(FormBuilderEventUpdateQuestion(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      question: freezed == question
          ? _self.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _self._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choice>?,
    ));
  }
}

/// @nodoc

class FormBuilderEventUpdateQuestionType implements FormBuilderEvent {
  const FormBuilderEventUpdateQuestionType(
      {required this.questionId, required this.type});

  final String questionId;
  final QuestionType type;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventUpdateQuestionTypeCopyWith<
          FormBuilderEventUpdateQuestionType>
      get copyWith => _$FormBuilderEventUpdateQuestionTypeCopyWithImpl<
          FormBuilderEventUpdateQuestionType>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventUpdateQuestionType &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, type);

  @override
  String toString() {
    return 'FormBuilderEvent.updateQuestionType(questionId: $questionId, type: $type)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventUpdateQuestionTypeCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventUpdateQuestionTypeCopyWith(
          FormBuilderEventUpdateQuestionType value,
          $Res Function(FormBuilderEventUpdateQuestionType) _then) =
      _$FormBuilderEventUpdateQuestionTypeCopyWithImpl;
  @useResult
  $Res call({String questionId, QuestionType type});
}

/// @nodoc
class _$FormBuilderEventUpdateQuestionTypeCopyWithImpl<$Res>
    implements $FormBuilderEventUpdateQuestionTypeCopyWith<$Res> {
  _$FormBuilderEventUpdateQuestionTypeCopyWithImpl(this._self, this._then);

  final FormBuilderEventUpdateQuestionType _self;
  final $Res Function(FormBuilderEventUpdateQuestionType) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? type = null,
  }) {
    return _then(FormBuilderEventUpdateQuestionType(
      questionId: null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as QuestionType,
    ));
  }
}

/// @nodoc

class FormBuilderEventRemoveQuestion implements FormBuilderEvent {
  const FormBuilderEventRemoveQuestion(this.questionId);

  final String questionId;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventRemoveQuestionCopyWith<FormBuilderEventRemoveQuestion>
      get copyWith => _$FormBuilderEventRemoveQuestionCopyWithImpl<
          FormBuilderEventRemoveQuestion>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventRemoveQuestion &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @override
  String toString() {
    return 'FormBuilderEvent.removeQuestion(questionId: $questionId)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventRemoveQuestionCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventRemoveQuestionCopyWith(
          FormBuilderEventRemoveQuestion value,
          $Res Function(FormBuilderEventRemoveQuestion) _then) =
      _$FormBuilderEventRemoveQuestionCopyWithImpl;
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class _$FormBuilderEventRemoveQuestionCopyWithImpl<$Res>
    implements $FormBuilderEventRemoveQuestionCopyWith<$Res> {
  _$FormBuilderEventRemoveQuestionCopyWithImpl(this._self, this._then);

  final FormBuilderEventRemoveQuestion _self;
  final $Res Function(FormBuilderEventRemoveQuestion) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
  }) {
    return _then(FormBuilderEventRemoveQuestion(
      null == questionId
          ? _self.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FormBuilderEventUpdateChoice implements FormBuilderEvent {
  const FormBuilderEventUpdateChoice(
      {required this.choiceId, this.isRequired, this.description});

  final String choiceId;
  final bool? isRequired;
  final String? description;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventUpdateChoiceCopyWith<FormBuilderEventUpdateChoice>
      get copyWith => _$FormBuilderEventUpdateChoiceCopyWithImpl<
          FormBuilderEventUpdateChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventUpdateChoice &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, choiceId, isRequired, description);

  @override
  String toString() {
    return 'FormBuilderEvent.updateChoice(choiceId: $choiceId, isRequired: $isRequired, description: $description)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventUpdateChoiceCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventUpdateChoiceCopyWith(
          FormBuilderEventUpdateChoice value,
          $Res Function(FormBuilderEventUpdateChoice) _then) =
      _$FormBuilderEventUpdateChoiceCopyWithImpl;
  @useResult
  $Res call({String choiceId, bool? isRequired, String? description});
}

/// @nodoc
class _$FormBuilderEventUpdateChoiceCopyWithImpl<$Res>
    implements $FormBuilderEventUpdateChoiceCopyWith<$Res> {
  _$FormBuilderEventUpdateChoiceCopyWithImpl(this._self, this._then);

  final FormBuilderEventUpdateChoice _self;
  final $Res Function(FormBuilderEventUpdateChoice) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? choiceId = null,
    Object? isRequired = freezed,
    Object? description = freezed,
  }) {
    return _then(FormBuilderEventUpdateChoice(
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

class FormBuilderEventRemoveChoice implements FormBuilderEvent {
  const FormBuilderEventRemoveChoice(this.choiceId);

  final String choiceId;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventRemoveChoiceCopyWith<FormBuilderEventRemoveChoice>
      get copyWith => _$FormBuilderEventRemoveChoiceCopyWithImpl<
          FormBuilderEventRemoveChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventRemoveChoice &&
            (identical(other.choiceId, choiceId) ||
                other.choiceId == choiceId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, choiceId);

  @override
  String toString() {
    return 'FormBuilderEvent.removeChoice(choiceId: $choiceId)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventRemoveChoiceCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventRemoveChoiceCopyWith(
          FormBuilderEventRemoveChoice value,
          $Res Function(FormBuilderEventRemoveChoice) _then) =
      _$FormBuilderEventRemoveChoiceCopyWithImpl;
  @useResult
  $Res call({String choiceId});
}

/// @nodoc
class _$FormBuilderEventRemoveChoiceCopyWithImpl<$Res>
    implements $FormBuilderEventRemoveChoiceCopyWith<$Res> {
  _$FormBuilderEventRemoveChoiceCopyWithImpl(this._self, this._then);

  final FormBuilderEventRemoveChoice _self;
  final $Res Function(FormBuilderEventRemoveChoice) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? choiceId = null,
  }) {
    return _then(FormBuilderEventRemoveChoice(
      null == choiceId
          ? _self.choiceId
          : choiceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class FormBuilderEventUpsertUserChoice implements FormBuilderEvent {
  const FormBuilderEventUpsertUserChoice(
      {required this.questionId, this.description});

  final String questionId;
  final String? description;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderEventUpsertUserChoiceCopyWith<FormBuilderEventUpsertUserChoice>
      get copyWith => _$FormBuilderEventUpsertUserChoiceCopyWithImpl<
          FormBuilderEventUpsertUserChoice>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderEventUpsertUserChoice &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId, description);

  @override
  String toString() {
    return 'FormBuilderEvent.upsertUserChoice(questionId: $questionId, description: $description)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderEventUpsertUserChoiceCopyWith<$Res>
    implements $FormBuilderEventCopyWith<$Res> {
  factory $FormBuilderEventUpsertUserChoiceCopyWith(
          FormBuilderEventUpsertUserChoice value,
          $Res Function(FormBuilderEventUpsertUserChoice) _then) =
      _$FormBuilderEventUpsertUserChoiceCopyWithImpl;
  @useResult
  $Res call({String questionId, String? description});
}

/// @nodoc
class _$FormBuilderEventUpsertUserChoiceCopyWithImpl<$Res>
    implements $FormBuilderEventUpsertUserChoiceCopyWith<$Res> {
  _$FormBuilderEventUpsertUserChoiceCopyWithImpl(this._self, this._then);

  final FormBuilderEventUpsertUserChoice _self;
  final $Res Function(FormBuilderEventUpsertUserChoice) _then;

  /// Create a copy of FormBuilderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? questionId = null,
    Object? description = freezed,
  }) {
    return _then(FormBuilderEventUpsertUserChoice(
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
mixin _$FormBuilderState {
  FormTitle get formTitle;
  List<FormQuestion> get questions;
  bool get isPreviewing;
  FormBuilderError get error;
  bool get isLoading;

  /// Create a copy of FormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FormBuilderStateCopyWith<FormBuilderState> get copyWith =>
      _$FormBuilderStateCopyWithImpl<FormBuilderState>(
          this as FormBuilderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FormBuilderState &&
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
    return 'FormBuilderState(formTitle: $formTitle, questions: $questions, isPreviewing: $isPreviewing, error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $FormBuilderStateCopyWith<$Res> {
  factory $FormBuilderStateCopyWith(
          FormBuilderState value, $Res Function(FormBuilderState) _then) =
      _$FormBuilderStateCopyWithImpl;
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
class _$FormBuilderStateCopyWithImpl<$Res>
    implements $FormBuilderStateCopyWith<$Res> {
  _$FormBuilderStateCopyWithImpl(this._self, this._then);

  final FormBuilderState _self;
  final $Res Function(FormBuilderState) _then;

  /// Create a copy of FormBuilderState
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

  /// Create a copy of FormBuilderState
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

class _FormBuilderState implements FormBuilderState {
  const _FormBuilderState(
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

  /// Create a copy of FormBuilderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FormBuilderStateCopyWith<_FormBuilderState> get copyWith =>
      __$FormBuilderStateCopyWithImpl<_FormBuilderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FormBuilderState &&
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
    return 'FormBuilderState(formTitle: $formTitle, questions: $questions, isPreviewing: $isPreviewing, error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class _$FormBuilderStateCopyWith<$Res>
    implements $FormBuilderStateCopyWith<$Res> {
  factory _$FormBuilderStateCopyWith(
          _FormBuilderState value, $Res Function(_FormBuilderState) _then) =
      __$FormBuilderStateCopyWithImpl;
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
class __$FormBuilderStateCopyWithImpl<$Res>
    implements _$FormBuilderStateCopyWith<$Res> {
  __$FormBuilderStateCopyWithImpl(this._self, this._then);

  final _FormBuilderState _self;
  final $Res Function(_FormBuilderState) _then;

  /// Create a copy of FormBuilderState
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
    return _then(_FormBuilderState(
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

  /// Create a copy of FormBuilderState
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
