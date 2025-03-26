import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/translation.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/question_card.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/title_card.dart';
import 'package:form_builder_assignment/utils/platform_detector.dart';

class FormBuilderPage extends StatefulWidget {
  const FormBuilderPage({super.key});

  @override
  State<FormBuilderPage> createState() => _FormBuilderPageState();
}

class _FormBuilderPageState extends State<FormBuilderPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final formWidth = isMobile ? (MediaQuery.of(context).size.width - 16 * 2) : 600.0;

    return Scaffold(
      body: BlocConsumer<SimpleFormBuilderBloc, SimpleFormBuilderState>(
        listenWhen: (previous, current) => previous.error != current.error,
        listener: (context, state) {
          if (state.error != FormBuilderError.none) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error.translate()),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Center(
                    child: FormBuilder(
                      key: _formKey,
                      child: Column(
                        children: [
                          TitleCard(
                            isEditing: !state.isPreviewing,
                            title: state.formTitle.name,
                            description: state.formTitle.description,
                            onTitleChanged: (value) {
                              context.simpleFormBuilderBloc.add(
                                SimpleFormBuilderEvent.updateFormTitle(name: value),
                              );
                            },
                            onDescriptionChanged: (value) {
                              context.simpleFormBuilderBloc.add(
                                SimpleFormBuilderEvent.updateFormTitle(descrription: value),
                              );
                            },
                            width: formWidth,
                          ),
                          const SizedBox(height: 24),
                          ...state.questions.map(
                            (question) => SizedBox(
                              width: formWidth,
                              child: QuestionCard(
                                key: ValueKey(question.id),
                                question: question,
                                isEditing: !state.isPreviewing,
                                width: formWidth,
                                onAddChoice: (questionId, description) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.addChoice(
                                      questionId: questionId,
                                      description: description,
                                    ),
                                  );
                                },
                                onAddUserChoice: (questionId, description) => context.simpleFormBuilderBloc.add(
                                  SimpleFormBuilderEvent.addUserChoice(
                                    questionId: questionId,
                                    description: description,
                                  ),
                                ),
                                onRemoveChoice: (questionId, choiceId) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.removeChoice(
                                      questionId: questionId,
                                      choiceId: choiceId,
                                    ),
                                  );
                                },
                                onRemoveQuestion: (questionId) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.removeQuestion(
                                      questionId,
                                    ),
                                  );
                                },
                                onUpdateChoiceOptions: (questionId, choiceId, description) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.updateChoiceOptions(
                                      questionId: questionId,
                                      choiceId: choiceId,
                                      description: description,
                                    ),
                                  );
                                },
                                onUpdateQuestion: (questionId, {isRequired, question}) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.updateQuestion(
                                      questionId: questionId,
                                      isRequired: isRequired,
                                      question: question,
                                    ),
                                  );
                                },
                                onUpdateQuestionType: (questionId, newType) {
                                  context.simpleFormBuilderBloc.add(
                                    SimpleFormBuilderEvent.updateQuestionType(
                                      questionId: questionId,
                                      newType: newType,
                                    ),
                                  );
                                },
                                onAnswerMultipleChoiceQuestion: state.isPreviewing
                                    ? (questionId, choiceId) {
                                        context.simpleFormBuilderBloc.add(
                                          SimpleFormBuilderEvent.answerMultipleChoiceQuestion(
                                            questionId: questionId,
                                            choiceId: choiceId,
                                          ),
                                        );
                                      }
                                    : null,
                                onAnswerParagraphQuestion: state.isPreviewing
                                    ? (questionId, answer) {
                                        context.simpleFormBuilderBloc.add(
                                          SimpleFormBuilderEvent.answerParagraphQuestion(
                                            questionId: questionId,
                                            answer: answer,
                                          ),
                                        );
                                      }
                                    : null,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          if (!state.isPreviewing)
                            TextButton(
                              child: const Text('Add Question'),
                              onPressed: () {
                                context.simpleFormBuilderBloc.add(
                                  const SimpleFormBuilderEvent.addQuestion(
                                    type: QuestionType.paragraph,
                                    question: '',
                                  ),
                                );
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              if (state.isPreviewing)
                SizedBox(
                  width: formWidth,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        FilledButton(
                          onPressed: () {
                            if (_formKey.currentState!.saveAndValidate()) {
                              context.simpleFormBuilderBloc.add(
                                const SimpleFormBuilderEvent.submitForm(),
                              );
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Form submitted successfully'),
                                  backgroundColor: Colors.green,
                                ),
                              );
                            }
                          },
                          child: const Text('Submit'),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {
                            context.simpleFormBuilderBloc.add(
                              const SimpleFormBuilderEvent.togglePreview(),
                            );
                          },
                          child: const Text('Back to edit'),
                        ),
                        const SizedBox(width: 8),
                        TextButton(
                          onPressed: () {
                            context.simpleFormBuilderBloc.add(
                              const SimpleFormBuilderEvent.clearFormAnswer(),
                            );
                          },
                          child: const Text('Clear form'),
                        ),
                      ],
                    ),
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: FilledButton(
                    onPressed: () {
                      context.simpleFormBuilderBloc.add(
                        const SimpleFormBuilderEvent.togglePreview(),
                      );
                    },
                    child: const Text('Preview'),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFloatingAddButton(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            context.simpleFormBuilderBloc.add(
              const SimpleFormBuilderEvent.addQuestion(
                type: QuestionType.paragraph,
                question: '',
              ),
            );
          },
        ),
      ],
    );
  }
}
