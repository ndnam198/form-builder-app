part of 'simple_form_builder_bloc.dart';

@freezed
abstract class SimpleFormBuilderState with _$SimpleFormBuilderState {
  const factory SimpleFormBuilderState({
    @Default(FormTitle.empty) FormTitle formTitle,
    @Default([]) List<FormQuestion> questions,
    @Default(false) bool isPreviewing,
    @Default(FormBuilderError.none) FormBuilderError error,
    @Default(false) bool isLoading,
    @Default([]) List<FormData> responses,
  }) = _SimpleFormBuilderState;

  factory SimpleFormBuilderState.initial() => SimpleFormBuilderState(
        questions: [
          FormQuestion.paragraph(
            id: generateUuid(),
            question: 'Untitled Question',
          ),
        ],
      );
}

enum FormBuilderError {
  duplicatedQuestion,
  questionTypeMissing,
  formTitleEmpty,
  maximumChoiceExceeded,
  maximumUserChoiceExceeded,
  requiredQuestionsNotAnswered,
  none,
}
