import 'package:dartx/dartx.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_assignment/form_builder/domain/choice.dart';
import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/form_builder/view/translation.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    required this.question,
    required this.width,
    required this.isEditing,
    super.key,
    this.onUpdateQuestion,
    this.onUpdateQuestionType,
    this.onAnswerMultipleChoiceQuestion,
    this.onAddChoice,
    this.onAddUserChoice,
    this.onUpdateChoiceOptions,
    this.onRemoveChoice,
    this.onAnswerParagraphQuestion,
    this.onRemoveQuestion,
  });

  final FormQuestion question;
  final bool isEditing;
  final double width;

  // Callbacks
  final void Function(String questionId, {String? question, bool? isRequired})? onUpdateQuestion;
  final void Function(String questionId, QuestionType newType)? onUpdateQuestionType;
  final void Function(String questionId, String choiceId)? onAnswerMultipleChoiceQuestion;
  // ignore: avoid_positional_boolean_parameters
  final void Function(String questionId, String description)? onAddChoice;
  final void Function(String questionId, String description)? onAddUserChoice;
  final void Function(String questionId, String choiceId, String description)? onUpdateChoiceOptions;
  final void Function(String questionId, String choiceId)? onRemoveChoice;
  final void Function(String questionId, String answer)? onAnswerParagraphQuestion;
  final void Function(String questionId)? onRemoveQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildQuestionHeader(context),
              const SizedBox(
                height: 16,
              ),
              _buildQuestionContent(context),
              if (isEditing) _buildQuestionFooter(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildQuestionHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FormBuilderTextField(
            enabled: isEditing,
            name: 'question_${question.id}',
            initialValue: question.question,
            decoration: const InputDecoration(
              labelText: 'Question',
              hintText: 'Enter your question',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              if (value != null && onUpdateQuestion != null) {
                onUpdateQuestion!(
                  question.id,
                  question: value,
                );
              }
            },
          ),
        ),
        const SizedBox(width: 8),
        _buildTypeDropdown(context),
      ],
    );
  }

  Widget _buildTypeDropdown(BuildContext context) {
    return SizedBox(
      width: 140,
      child: FormBuilderDropdown<QuestionType>(
        enabled: isEditing,
        name: 'question_type_${question.id}',
        decoration: const InputDecoration(
          labelText: 'Type',
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        ),
        initialValue: question.type,
        items: QuestionType.values.map((type) {
          return DropdownMenuItem(
            value: type,
            child: Text(
              type.translate(),
              style: const TextStyle(fontSize: 14),
            ),
          );
        }).toList(),
        onChanged: (value) {
          if (value != null && onUpdateQuestionType != null) {
            onUpdateQuestionType!(
              question.id,
              value,
            );
          }
        },
      ),
    );
  }

  Widget _buildQuestionContent(BuildContext context) {
    switch (question.type) {
      case QuestionType.multiChoice:
        return _buildMultiChoiceContent(context, question as FormQuestionMultiChoice);
      case QuestionType.paragraph:
        return _buildParagraphContent(context, question as FormQuestionParagraph);
    }
  }

  Widget _buildMultiChoiceContent(BuildContext context, FormQuestionMultiChoice question) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilderRadioGroup<String>(
            name: 'answer_${question.id}',
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            enabled: !isEditing,
            options: question.choices.mapIndexed((index, choice) {
              return FormBuilderFieldOption(
                key: Key(choice.id),
                value: choice.id,
                child: _buildEditableChoice(context, question.id, choice, index),
              );
            }).toList(),
            validator: question.isRequired
                ? FormBuilderValidators.required(
                    errorText: 'Please select an option.',
                  )
                : null,
            onChanged: isEditing
                ? null
                : (value) {
                    if (value != null && onAnswerMultipleChoiceQuestion != null) {
                      onAnswerMultipleChoiceQuestion!(
                        question.id,
                        value,
                      );
                    }
                  },
          ),
          if (isEditing && question.choices.length < maxPredefinedChoicePerQuestion) ...[
            const SizedBox(height: 8),
            RadioListTile<bool>(
              tileColor: Colors.white,
              contentPadding: EdgeInsets.zero,
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Add option',
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          onAddChoice?.call(question.id, '');
                        },
                    ),
                    const TextSpan(
                      text: ' or ',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Add "Other"',
                      style: const TextStyle(fontSize: 14, color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          onAddUserChoice?.call(question.id, '');
                        },
                    ),
                  ],
                ),
              ),
              groupValue: false,
              value: true,
              onChanged: (bool? value) {
                onAddChoice?.call(question.id, '');
              },
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEditableChoice(BuildContext context, String questionId, Choice choice, int index) {
    final isUserDefined = choice is ChoiceUserDefined;

    return SizedBox(
      width: width * 0.9,
      child: Row(
        children: [
          Expanded(
            child: FormBuilderTextField(
              name: 'choice_${choice.id}',
              initialValue: choice.description,
              decoration: InputDecoration(
                hintText: isUserDefined ? 'Other...' : 'Option ${index + 1}',
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                isDense: true,
              ),
              enabled: isEditing ? choice is ChoicePredefined : choice is ChoiceUserDefined,
              onChanged: (value) {
                if (value != null && onUpdateChoiceOptions != null) {
                  onUpdateChoiceOptions!(
                    questionId,
                    choice.id,
                    value,
                  );
                  FocusScope.of(context).nextFocus();
                }
              },
            ),
          ),
          if (isEditing)
            IconButton(
              icon: const Icon(Icons.close, size: 20),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                onRemoveChoice?.call(
                  questionId,
                  choice.id,
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildParagraphContent(BuildContext context, FormQuestionParagraph question) {
    return FormBuilderTextField(
      name: 'paragraph_${question.id}',
      initialValue: question.answer,
      decoration: const InputDecoration(
        hintText: 'Long answer text',
        border: OutlineInputBorder(),
      ),
      validator: question.isRequired ? FormBuilderValidators.required() : null,
      maxLines: 3,
      enabled: !isEditing,
      onChanged: (value) {
        if (value != null && !isEditing && onAnswerParagraphQuestion != null) {
          onAnswerParagraphQuestion!(
            question.id,
            value,
          );
        }
      },
    );
  }

  Widget _buildQuestionFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.delete),
            tooltip: 'Delete question',
            onPressed: () {
              onRemoveQuestion?.call(question.id);
            },
          ),
          const SizedBox(width: 8),
          Transform.scale(
            scale: 0.8,
            child: Row(
              children: [
                const Text(
                  'Required',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(width: 8),
                Switch(
                  value: question.isRequired,
                  onChanged: (value) {
                    onUpdateQuestion?.call(
                      question.id,
                      isRequired: value,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
