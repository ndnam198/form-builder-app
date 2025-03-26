part of 'simple_form_builder_bloc.dart';

@freezed
sealed class SimpleFormBuilderEvent with _$SimpleFormBuilderEvent {
  const factory SimpleFormBuilderEvent.updateFormTitle({
    String? name,
    String? descrription,
  }) = SimpleFormBuilderEventUpdateFormTitle;

  const factory SimpleFormBuilderEvent.addQuestion({
    required QuestionType type,
    required String question,
  }) = SimpleFormBuilderEventAddQuestion;

  const factory SimpleFormBuilderEvent.updateQuestion({
    required String questionId,
    String? question,
    bool? isRequired,
  }) = SimpleFormBuilderEventUpdateQuestion;

  const factory SimpleFormBuilderEvent.addChoice({
    required String questionId,
    required String description,
    required bool isRequired,
  }) = SimpleFormBuilderEventAddChoice;

  const factory SimpleFormBuilderEvent.updateQuestionType({
    required String questionId,
    required QuestionType newType,
  }) = SimpleFormBuilderEventUpdateQuestionType;

  const factory SimpleFormBuilderEvent.removeQuestion(String questionId) = SimpleFormBuilderEventRemoveQuestion;

  const factory SimpleFormBuilderEvent.updateChoiceOptions({
    required String questionId,
    required String choiceId,
    bool? isRequired,
    String? description,
  }) = SimpleFormBuilderEventUpdateChoice;

  const factory SimpleFormBuilderEvent.removeChoice({
    required String questionId,
    required String choiceId,
  }) = SimpleFormBuilderEventRemoveChoice;

  const factory SimpleFormBuilderEvent.answerMultipleChoiceQuestion({
    required String questionId,
    required String choiceId,
  }) = SimpleFormBuilderEventAnswerMultipleChoiceQuestion;

  const factory SimpleFormBuilderEvent.answerParagraphQuestion({
    required String questionId,
    required String answer,
  }) = SimpleFormBuilderEventAnswerParagraphQuestion;

  /// for user to input there own answer
  const factory SimpleFormBuilderEvent.addUserChoice({
    required String questionId,
    String? description,
  }) = SimpleFormBuilderEventAddUserChoice;

  const factory SimpleFormBuilderEvent.createForm() = SimpleFormBuilderEventCreateForm;
  const factory SimpleFormBuilderEvent.togglePreview() = SimpleFormBuilderEventTogglePreview;
}
