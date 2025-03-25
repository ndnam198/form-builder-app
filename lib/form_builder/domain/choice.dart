import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';

@freezed
sealed class Choice with _$Choice {
  const factory Choice.predefined({
    required String id,
    @Default('') String description,
    @Default(false) bool isRequired,
    @Default(false) bool isSelected,
  }) = ChoicePredefined;

  const factory Choice.userDefined({
    required String id,
    @Default('') String description,
    @Default(false) bool isSelected,
  }) = ChoiceUserDefined;
}
