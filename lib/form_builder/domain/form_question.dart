import 'package:form_builder_assignment/form_builder/domain/choice.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_question.freezed.dart';

@freezed
sealed class FormQuestion with _$FormQuestion {
  const factory FormQuestion.multiChoice({
    required String id,
    @Default('') String question,
    @Default(QuestionType.multiChoice) QuestionType type,
    @Default([]) List<Choice> choices,
    Choice? other,
  }) = FormQuestionMultiChoice;

  const factory FormQuestion.paragraph({
    required String id,
    @Default('') String question,
    @Default('') String answer,
    @Default(QuestionType.paragraph) QuestionType type,
  }) = FormQuestionParagraph;
}
