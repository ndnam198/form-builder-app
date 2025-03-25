import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice.freezed.dart';

@freezed
sealed class Choice with _$Choice {
  const factory Choice.predefined({
    required String id,
    @Default('') String description,
  }) = ChoicePredefined;

  const factory Choice.userDefined({
    required String id,
    @Default('') String description,
  }) = ChoiceUserDefined;
}
