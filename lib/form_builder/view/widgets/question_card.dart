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
    super.key,
    this.isEditing = true,
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
  final void Function(String questionId, String description, bool isRequired)? onAddChoice;
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
              const SizedBox(height: 16),
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
          child: isEditing
              ? FormBuilderTextField(
                  name: 'question_${question.id}',
                  initialValue: question.question,
                  decoration: const InputDecoration(
                    labelText: 'Question',
                    hintText: 'Enter your question',
                    border: OutlineInputBorder(),
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  onChanged: (value) {
                    if (value != null && onUpdateQuestion != null) {
                      onUpdateQuestion!(
                        question.id,
                        question: value,
                      );
                    }
                  },
                )
              : Text(
                  question.question,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
        ),
        if (isEditing) ...[
          const SizedBox(width: 8),
          _buildTypeDropdown(context),
        ],
      ],
    );
  }

  Widget _buildTypeDropdown(BuildContext context) {
    return SizedBox(
      width: 140,
      child: FormBuilderDropdown<QuestionType>(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FormBuilderRadioGroup<String>(
            name: 'answer_${question.id}',
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            initialValue: question.selectedChoiceId,
            options: question.choices.map((choice) {
              return FormBuilderFieldOption(
                value: choice.id,
                child: isEditing ? _buildEditableChoice(context, question.id, choice) : Text(choice.description),
              );
            }).toList(),
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
          if (isEditing) ...[
            const SizedBox(height: 8),
            Row(
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.add, size: 16),
                  label: const Text('Add Choice'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    onAddChoice?.call(
                      question.id,
                      '',
                      false,
                    );
                  },
                ),
                const SizedBox(width: 8),
                OutlinedButton.icon(
                  icon: const Icon(Icons.edit, size: 16),
                  label: const Text('Add "Other"'),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    textStyle: const TextStyle(fontSize: 14),
                  ),
                  onPressed: () {
                    onAddUserChoice?.call(
                      question.id,
                      'Other',
                    );
                  },
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildEditableChoice(BuildContext context, String questionId, Choice choice) {
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
                hintText: isUserDefined ? 'Other option' : 'Enter choice',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                isDense: true,
              ),
              onChanged: (value) {
                if (value != null && onUpdateChoiceOptions != null) {
                  onUpdateChoiceOptions!(
                    questionId,
                    choice.id,
                    value,
                  );
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete, size: 20),
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
        hintText: 'Enter your answer',
        border: OutlineInputBorder(),
      ),
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
                    fontSize: 14,
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
