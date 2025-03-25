import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_assignment/form_builder/domain/choice.dart';
import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class FormBuilderPage extends StatefulWidget {
  const FormBuilderPage({super.key});

  @override
  State<FormBuilderPage> createState() => _FormBuilderPageState();
}

class _FormBuilderPageState extends State<FormBuilderPage> {
  final _formKey = GlobalKey<_FormBuilderPageState>();
  final _formTitleController = TextEditingController();
  final _formDescriptionController = TextEditingController();

  @override
  void dispose() {
    _formTitleController.dispose();
    _formDescriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Builder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.preview),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocConsumer<SimpleFormBuilderBloc, SimpleFormBuilderState>(
        listener: (context, state) {
          if (state.error != FormBuilderError.none) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_getErrorMessage(state.error)),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (_formTitleController.text != state.formTitle.name) {
            _formTitleController.text = state.formTitle.name;
          }
          if (_formDescriptionController.text != state.formTitle.description) {
            _formDescriptionController.text = state.formTitle.description;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: FormBuilder(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildFormTitleSection(context),
                  const SizedBox(height: 24),
                  ...state.questions
                      .map((question) => _buildQuestionCard(context, question)),
                  const SizedBox(height: 16),
                  _buildAddQuestionButton(context),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFormTitleSection(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormBuilderTextField(
              name: 'form_title',
              controller: _formTitleController,
              decoration: const InputDecoration(
                labelText: 'Form Title',
                hintText: 'Enter form title',
                border: OutlineInputBorder(),
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
              ]),
              onChanged: (value) {
                if (value != null) {
                  context.read<SimpleFormBuilderBloc>().add(
                        SimpleFormBuilderEvent.updateFormTitle(name: value),
                      );
                }
              },
            ),
            const SizedBox(height: 16),
            FormBuilderTextField(
              name: 'form_description',
              controller: _formDescriptionController,
              decoration: const InputDecoration(
                labelText: 'Form Description',
                hintText: 'Enter form description',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              onChanged: (value) {
                if (value != null) {
                  context.read<SimpleFormBuilderBloc>().add(
                        SimpleFormBuilderEvent.updateFormTitle(
                            descrription: value),
                      );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestionCard(BuildContext context, FormQuestion question) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: FormBuilderTextField(
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
                      if (value != null) {
                        context.read<SimpleFormBuilderBloc>().add(
                              SimpleFormBuilderEvent.updateQuestion(
                                questionId: question.id,
                                question: value,
                              ),
                            );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    context.read<SimpleFormBuilderBloc>().add(
                          SimpleFormBuilderEvent.removeQuestion(question.id),
                        );
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: FormBuilderDropdown<QuestionType>(
                    name: 'question_type_${question.id}',
                    decoration: const InputDecoration(
                      labelText: 'Question Type',
                      border: OutlineInputBorder(),
                    ),
                    initialValue: question.type,
                    items: QuestionType.values.map((type) {
                      return DropdownMenuItem(
                        value: type,
                        child: Text(type.name),
                      );
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        context.read<SimpleFormBuilderBloc>().add(
                              SimpleFormBuilderEvent.updateQuestionType(
                                questionId: question.id,
                                newType: value,
                              ),
                            );
                      }
                    },
                  ),
                ),
                const SizedBox(width: 16),
                FormBuilderCheckbox(
                  name: 'required_${question.id}',
                  initialValue: question.isRequired,
                  title: const Text('Required'),
                  onChanged: (value) {
                    context.read<SimpleFormBuilderBloc>().add(
                          SimpleFormBuilderEvent.updateQuestion(
                            questionId: question.id,
                            isRequired: value,
                          ),
                        );
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (question.type == QuestionType.multiChoice)
              _buildMultiChoiceOptions(
                  context, question as FormQuestionMultiChoice),
          ],
        ),
      ),
    );
  }

  Widget _buildMultiChoiceOptions(
      BuildContext context, FormQuestionMultiChoice question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Choices',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ...question.choices
            .map((choice) => _buildChoiceItem(context, question.id, choice)),
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add Choice'),
          onPressed: () {
            context.read<SimpleFormBuilderBloc>().add(
                  SimpleFormBuilderEvent.addChoice(
                    questionId: question.id,
                    description: '',
                    isRequired: false,
                  ),
                );
          },
        ),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          icon: const Icon(Icons.add),
          label: const Text('Add "Other" Option'),
          onPressed: () {
            context.read<SimpleFormBuilderBloc>().add(
                  SimpleFormBuilderEvent.addUserChoice(
                    questionId: question.id,
                    description: 'Other',
                  ),
                );
          },
        ),
      ],
    );
  }

  Widget _buildChoiceItem(
      BuildContext context, String questionId, Choice choice) {
    final isUserDefined = choice is ChoiceUserDefined;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: FormBuilderTextField(
              name: 'choice_${choice.id}',
              initialValue: choice.description,
              decoration: InputDecoration(
                hintText: isUserDefined ? 'Other option' : 'Enter choice',
                border: const OutlineInputBorder(),
                prefixIcon: isUserDefined ? const Icon(Icons.edit) : null,
              ),
              onChanged: (value) {
                if (value != null) {
                  context.read<SimpleFormBuilderBloc>().add(
                        SimpleFormBuilderEvent.updateChoiceOptions(
                          questionId: questionId,
                          choiceId: choice.id,
                          description: value,
                        ),
                      );
                }
              },
            ),
          ),
          if (choice is ChoicePredefined)
            FormBuilderCheckbox(
              name: 'choice_required_${choice.id}',
              initialValue: false,
              title: const Text('Req'),
              onChanged: (value) {
                context.read<SimpleFormBuilderBloc>().add(
                      SimpleFormBuilderEvent.updateChoiceOptions(
                        questionId: questionId,
                        choiceId: choice.id,
                        isRequired: value,
                      ),
                    );
              },
            ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              context.read<SimpleFormBuilderBloc>().add(
                    SimpleFormBuilderEvent.removeChoice(
                      questionId: questionId,
                      choiceId: choice.id,
                    ),
                  );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildAddQuestionButton(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.add),
      label: const Text('Add Question'),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Select Question Type'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: QuestionType.values.map((type) {
                return ListTile(
                  title: Text(type.name),
                  onTap: () {
                    Navigator.pop(context);
                    context.read<SimpleFormBuilderBloc>().add(
                          SimpleFormBuilderEvent.addQuestion(
                            type: type,
                            question: '',
                          ),
                        );
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }

  String _getErrorMessage(FormBuilderError error) {
    switch (error) {
      case FormBuilderError.duplicatedQuestion:
        return 'Question already exists';
      case FormBuilderError.questionTypeMissing:
        return 'Question type is required';
      case FormBuilderError.formTitleEmpty:
        return 'Form title cannot be empty';
      case FormBuilderError.maximumChoiceExceeded:
        return 'Maximum number of choices reached';
      case FormBuilderError.maximumUserChoiceExceeded:
        return 'Only one "Other" option is allowed';
      case FormBuilderError.none:
        return '';
    }
  }
}
