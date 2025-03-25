import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/domain/form_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_data.freezed.dart';

@freezed
abstract class FormData with _$FormData {
  const factory FormData({
    required String id,
    @Default(FormTitle.empty) FormTitle formTitle,
    DateTime? createdAt,
    @Default([]) List<FormQuestion> questions,
  }) = _FormData;

  const FormData._();

  FormData updateFormTitle({
    String? name,
    String? description,
  }) {
    assert(name != null || description != null,
        'title or description must not be null');
    return copyWith(
      formTitle: formTitle.copyWith(
        name: name ?? formTitle.name,
        description: description ?? formTitle.description,
      ),
    );
  }

  static const empty = FormData(
    id: '',
  );
}
