import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';

extension QuestionTypeTranslation on QuestionType {
  String translate() {
    return switch (this) {
      QuestionType.multiChoice => 'Multiple Choice',
      QuestionType.paragraph => 'Paragraph',
    };
  }
}

extension FormBuilderErrorTranslation on FormBuilderError {
  String translate() {
    return switch (this) {
      FormBuilderError.duplicatedQuestion => 'Question already exists',
      FormBuilderError.questionTypeMissing => 'Question type is required',
      FormBuilderError.formTitleEmpty => 'Form title cannot be empty',
      FormBuilderError.maximumChoiceExceeded => 'Maximum number of choices reached',
      FormBuilderError.maximumUserChoiceExceeded => 'Only one "Other" option is allowed',
      FormBuilderError.none => '',
    };
  }
}
