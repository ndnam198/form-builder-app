part of 'form_builder_bloc.dart';

@freezed
sealed class FormBuilderEvent with _$FormBuilderEvent {
  const factory FormBuilderEvent.updateFormTitle({
    String? name,
    String? descrription,
  }) = FormBuilderEventUpdateFormTitle;

  const factory FormBuilderEvent.addQuestion({
    required QuestionType type,
    required String question,
  }) = FormBuilderEventAddQuestion;

  const factory FormBuilderEvent.updateQuestion({
    required String questionId,
    String? question,

    /// only happen if type is QuestionType.multipleChoice
    List<Choice>? choices,
  }) = FormBuilderEventUpdateQuestion;

  const factory FormBuilderEvent.updateQuestionType({
    required String questionId,
    required QuestionType type,
  }) = FormBuilderEventUpdateQuestionType;

  const factory FormBuilderEvent.removeQuestion(String questionId) = FormBuilderEventRemoveQuestion;

  const factory FormBuilderEvent.updateChoice({required String choiceId, bool? isRequired, String? description}) =
      FormBuilderEventUpdateChoice;
  const factory FormBuilderEvent.removeChoice(String choiceId) = FormBuilderEventRemoveChoice;
  const factory FormBuilderEvent.upsertUserChoice({required String questionId, String? description}) =
      FormBuilderEventUpsertUserChoice;
}
