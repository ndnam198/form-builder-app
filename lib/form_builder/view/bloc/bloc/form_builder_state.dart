part of 'form_builder_bloc.dart';

@freezed
abstract class FormBuilderState with _$FormBuilderState {
  const factory FormBuilderState({
    @Default(FormTitle.empty) FormTitle formTitle,
    @Default([]) List<FormQuestion> questions,
    @Default(false) bool isPreviewing,
    @Default(FormBuilderError.none) FormBuilderError error,
    @Default(false) bool isLoading,
  }) = _FormBuilderState;
}

enum FormBuilderError {
  duplicatedQuestion,
  questionTypeMissing,
  formTitleEmpty,
  none,
}
