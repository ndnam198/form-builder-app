import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_title.freezed.dart';

@freezed
abstract class FormTitle with _$FormTitle {
  const factory FormTitle({
    required String name,
    required String description,
  }) = _FormTitle;

  static const empty = FormTitle(name: 'Untitled', description: 'Form description');
}
