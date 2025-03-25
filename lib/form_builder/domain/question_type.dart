enum QuestionType {
  multiChoice,
  paragraph;

  bool get isMultiChoice => this == QuestionType.multiChoice;
  bool get isParagraph => this == QuestionType.paragraph;
}
