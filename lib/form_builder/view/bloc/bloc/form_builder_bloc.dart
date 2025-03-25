import 'package:bloc/bloc.dart';
import 'package:form_builder_assignment/form_builder/domain/choice.dart';
import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/domain/form_title.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/utils/uuid_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_builder_bloc.freezed.dart';
part 'form_builder_event.dart';
part 'form_builder_state.dart';

class FormBuilderBloc extends Bloc<FormBuilderEvent, FormBuilderState> {
  FormBuilderBloc() : super(const FormBuilderState()) {
    on<FormBuilderEventUpdateFormTitle>(_onUpdateFormTitle);
    on<FormBuilderEventAddQuestion>(_onAddQuestion);
    on<FormBuilderEventUpdateQuestion>(_onUpdateQuestion);
    on<FormBuilderEventRemoveQuestion>(_onRemoveQuestion);
    on<FormBuilderEventUpdateChoice>(_onUpdateChoice);
    on<FormBuilderEventUpdateQuestionType>(_onUpdateQuestionType);
    on<FormBuilderEventRemoveChoice>(_onRemoveChoice);
    on<FormBuilderEventUpsertUserChoice>(_onUpsertUserChoice);
  }

  void _onUpdateFormTitle(
    FormBuilderEventUpdateFormTitle event,
    Emitter<FormBuilderState> emit,
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
    FormBuilderEventAddQuestion event,
    Emitter<FormBuilderState> emit,
  ) {
    late FormQuestion question;

    /// check if question is duplicated with any created question
    if (state.questions.any((e) {
      return e.question == event.question && e.type == event.type;
    })) {
      emit(
        state.copyWith(
          error: FormBuilderError.duplicatedQuestion,
        ),
      );
      return;
    }

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
    FormBuilderEventUpdateQuestion event,
    Emitter<FormBuilderState> emit,
  ) {
    emit(
      state.copyWith(
        questions: state.questions.map((q) {
          if (q.id == event.questionId) {
            switch (q.type) {
              case QuestionType.multiChoice:
                return (q as FormQuestionMultiChoice).copyWith(
                  question: event.question ?? q.question,
                  choices: event.choices ?? q.choices,
                );
              case QuestionType.paragraph:
                return (q as FormQuestionParagraph).copyWith(
                  question: event.question ?? q.question,
                );
            }
          }
          return q;
        }).toList(),
      ),
    );
  }

  void _onRemoveQuestion(
    FormBuilderEventRemoveQuestion event,
    Emitter<FormBuilderState> emit,
  ) {
    emit(
      state.copyWith(
        questions: state.questions.where((q) => q.id != event.questionId).toList(),
      ),
    );
  }

  void _onUpdateChoice(
    FormBuilderEventUpdateChoice event,
    Emitter<FormBuilderState> emit,
  ) {}

  void _onRemoveChoice(
    FormBuilderEventRemoveChoice event,
    Emitter<FormBuilderState> emit,
  ) {}

  void _onUpsertUserChoice(
    FormBuilderEventUpsertUserChoice event,
    Emitter<FormBuilderState> emit,
  ) {}

  void _onUpdateQuestionType(
    FormBuilderEventUpdateQuestionType event,
    Emitter<FormBuilderState> emit,
  ) {}
}
