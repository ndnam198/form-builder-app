import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_assignment/form_builder/domain/choice.dart';
import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/domain/form_title.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/utils/uuid_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_form_builder_bloc.freezed.dart';
part 'simple_form_builder_event.dart';
part 'simple_form_builder_state.dart';

class SimpleFormBuilderBloc extends Bloc<SimpleFormBuilderEvent, SimpleFormBuilderState> {
  SimpleFormBuilderBloc() : super(SimpleFormBuilderState.initial()) {
    on<SimpleFormBuilderEventUpdateFormTitle>(_onUpdateFormTitle);
    on<SimpleFormBuilderEventAddQuestion>(_onAddQuestion);
    on<SimpleFormBuilderEventUpdateQuestion>(_onUpdateQuestion);
    on<SimpleFormBuilderEventRemoveQuestion>(_onRemoveQuestion);
    on<SimpleFormBuilderEventUpdateChoice>(_onUpdateChoice);
    on<SimpleFormBuilderEventUpdateQuestionType>(_onUpdateQuestionType);
    on<SimpleFormBuilderEventRemoveChoice>(_onRemoveChoice);
    on<SimpleFormBuilderEventAddUserChoice>(_onAddUserChoice);
    on<SimpleFormBuilderEventAddChoice>(_onAddChoice);
    on<SimpleFormBuilderEventAnswerMultipleChoiceQuestion>(
      _onAnswerMultipleChoiceQuestion,
    );
    on<SimpleFormBuilderEventAnswerParagraphQuestion>(
      _onAnswerParagraphQuestion,
    );
    on<SimpleFormBuilderEventTogglePreview>(_onTogglePreview);
  }

  void _onUpdateFormTitle(
    SimpleFormBuilderEventUpdateFormTitle event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    emit(
      state.copyWith(
        formTitle: state.formTitle.copyWith(
          name: event.name ?? state.formTitle.name,
          description: event.descrription ?? state.formTitle.description,
        ),
      ),
    );
  }

  void _onAddQuestion(
    SimpleFormBuilderEventAddQuestion event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    late FormQuestion question;

    switch (event.type) {
      case QuestionType.multiChoice:
        question = FormQuestion.multiChoice(
          id: generateUuid(),
          type: event.type,
          question: event.question,
        );
      case QuestionType.paragraph:
        question = FormQuestion.paragraph(
          id: generateUuid(),
          type: event.type,
          question: event.question,
        );
    }
    emit(
      state.copyWith(
        questions: [
          ...state.questions,
          question,
        ],
      ),
    );
  }

  void _onUpdateQuestion(
    SimpleFormBuilderEventUpdateQuestion event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    // if question duplicated, update error
    FormBuilderError? error;
    if (event.question.isNotNullOrEmpty && state.questions.any((q) => q.question == event.question)) {
      error = FormBuilderError.duplicatedQuestion;
      emit(
        state.copyWith(
          error: error,
        ),
      );
      return;
    }

    emit(
      state.copyWith(
        questions: state.questions.map((q) {
          if (q.id == event.questionId) {
            return q.copyWith(
              question: event.question ?? q.question,
              isRequired: event.isRequired ?? q.isRequired,
            );
          }
          return q;
        }).toList(),
      ),
    );
  }

  void _onRemoveQuestion(
    SimpleFormBuilderEventRemoveQuestion event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    emit(
      state.copyWith(
        questions: state.questions.where((q) => q.id != event.questionId).toList(),
      ),
    );
  }

  void _onUpdateChoice(
    SimpleFormBuilderEventUpdateChoice event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.multiChoice,
          '1 only multi choice question can have choices',
        );
        assert(
          q is FormQuestionMultiChoice,
          '2 only multi choice question can have choices',
        );

        return (q as FormQuestionMultiChoice).copyWith(
          choices: q.choices.map((e) {
            if (e.id == event.choiceId) {
              if (e case final ChoicePredefined predefined) {
                return predefined.copyWith(
                  description: event.description ?? predefined.description,
                );
              } else if (e case final ChoiceUserDefined userDefined) {
                return userDefined.copyWith(
                  description: event.description ?? userDefined.description,
                );
              }
            }
            return e;
          }).toList(),
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(questions: updatedQuestions),
    );
  }

  void _onRemoveChoice(
    SimpleFormBuilderEventRemoveChoice event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.multiChoice,
          '1 Only multi choice question can have choices',
        );
        assert(
          q is FormQuestionMultiChoice,
          '2 Only multi choice question can have choices',
        );

        return (q as FormQuestionMultiChoice).copyWith(
          choices: q.choices.where((choice) => choice.id != event.choiceId).toList(),
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(questions: updatedQuestions),
    );
  }

  void _onAddUserChoice(
    SimpleFormBuilderEventAddUserChoice event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    FormBuilderError? error;

    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.multiChoice,
          'Only multi choice question can have choices',
        );
        assert(
          q is FormQuestionMultiChoice,
          'Only multi choice question can have choices',
        );

        final multiChoiceQuestion = q as FormQuestionMultiChoice;

        // Check if a user choice already exists
        final hasUserChoice = multiChoiceQuestion.choices.any((choice) => choice is ChoiceUserDefined);

        // If a user choice already exists, set an error and return the question unchanged
        if (hasUserChoice) {
          error = FormBuilderError.maximumUserChoiceExceeded;
          return q;
        }

        // Create a new user choice
        final newUserChoice = ChoiceUserDefined(
          id: generateUuid(),
          description: event.description ?? '',
        );

        return multiChoiceQuestion.copyWith(
          choices: [...multiChoiceQuestion.choices, newUserChoice],
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(
        questions: updatedQuestions,
        error: error ?? state.error,
      ),
    );
  }

  void _onUpdateQuestionType(
    SimpleFormBuilderEventUpdateQuestionType event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        // If the question type is already the same, no need to change
        if (q.type == event.newType) {
          return q;
        }

        // Create a new question with the updated type
        switch (event.newType) {
          case QuestionType.multiChoice:
            return FormQuestion.multiChoice(
              id: generateUuid(),
              type: event.newType,
              question: q.question,
            );
          case QuestionType.paragraph:
            return FormQuestion.paragraph(
              id: generateUuid(),
              type: event.newType,
              question: q.question,
            );
        }
      }
      return q;
    }).toList();

    emit(
      state.copyWith(questions: updatedQuestions),
    );
  }

  void _onAddChoice(
    SimpleFormBuilderEventAddChoice event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    FormBuilderError? error;

    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.multiChoice,
          'Only multi choice question can have choices',
        );
        assert(
          q is FormQuestionMultiChoice,
          'Only multi choice question can have choices',
        );

        final multiChoiceQuestion = q as FormQuestionMultiChoice;

        // Count existing predefined choices
        final predefinedChoicesCount = multiChoiceQuestion.choices.whereType<ChoicePredefined>().length;

        // Check if we've reached the maximum number of predefined choices
        if (predefinedChoicesCount >= maxPredefinedChoicePerQuestion) {
          error = FormBuilderError.maximumChoiceExceeded;
          // Return the question unchanged if we've reached the limit
          return q;
        }

        // Create a new predefined choice
        final newChoice = ChoicePredefined(
          id: generateUuid(),
          description: event.description,
        );

        return multiChoiceQuestion.copyWith(
          choices: [...multiChoiceQuestion.choices, newChoice],
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(
        questions: updatedQuestions,
        error: error ?? state.error,
      ),
    );
  }

  void _onAnswerMultipleChoiceQuestion(
    SimpleFormBuilderEventAnswerMultipleChoiceQuestion event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.multiChoice,
          'Only multi choice question can be answered with choices',
        );
        assert(
          q is FormQuestionMultiChoice,
          'Only multi choice question can be answered with choices',
        );

        return (q as FormQuestionMultiChoice).copyWith(
          selectedChoiceId: event.choiceId,
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(questions: updatedQuestions),
    );
  }

  void _onAnswerParagraphQuestion(
    SimpleFormBuilderEventAnswerParagraphQuestion event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    final updatedQuestions = state.questions.map((q) {
      if (q.id == event.questionId) {
        assert(
          q.type == QuestionType.paragraph,
          'Only paragraph question can be answered with text',
        );
        assert(
          q is FormQuestionParagraph,
          'Only paragraph question can be answered with text',
        );

        return (q as FormQuestionParagraph).copyWith(
          answer: event.answer,
        );
      }
      return q;
    }).toList();

    emit(
      state.copyWith(questions: updatedQuestions),
    );
  }

  void _onTogglePreview(
    SimpleFormBuilderEventTogglePreview event,
    Emitter<SimpleFormBuilderState> emit,
  ) {
    emit(
      state.copyWith(isPreviewing: !state.isPreviewing),
    );
  }
}

extension SimpleFormBuilderBlocX on BuildContext {
  SimpleFormBuilderBloc get simpleFormBuilderBloc => read<SimpleFormBuilderBloc>();
}
