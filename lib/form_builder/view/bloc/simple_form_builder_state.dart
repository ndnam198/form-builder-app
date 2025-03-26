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
          // FormQuestion.multiChoice(
          //   isRequired: true,
          //   id: generateUuid(),
          //   question: 'What programming language have you used the most?',
          //   choices: [
          //     Choice.predefined(
          //       id: generateUuid(),
          //       description: 'Dart',
          //     ),
          //     Choice.predefined(
          //       id: generateUuid(),
          //       description: 'Java',
          //     ),
          //     Choice.predefined(
          //       id: generateUuid(),
          //       description: 'Javascript',
          //     ),
          //     Choice.predefined(
          //       id: generateUuid(),
          //       description: 'Csharp',
          //     ),
          //     Choice.userDefined(
          //       id: generateUuid(),
          //     ),
          //   ],
          // ),
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
