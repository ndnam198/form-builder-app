import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_assignment/form_builder/domain/question_type.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/question_card.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/title_card.dart';

class FormBuilderPage extends StatefulWidget {
  const FormBuilderPage({super.key});

  @override
  State<FormBuilderPage> createState() => _FormBuilderPageState();
}

class _FormBuilderPageState extends State<FormBuilderPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Builder'),
        actions: [
          IconButton(
            icon: const Icon(Icons.preview),
            onPressed: () {
              context.simpleFormBuilderBloc.add(
                const SimpleFormBuilderEvent.togglePreview(),
              );
            },
          ),
        ],
      ),
      floatingActionButton: _buildFloatingAddButton(context),
      body: BlocConsumer<SimpleFormBuilderBloc, SimpleFormBuilderState>(
        listenWhen: (previous, current) => previous.error != current.error,
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
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
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
                      width: 600,
                    ),
                    const SizedBox(height: 24),
                    ...state.questions.map(
                      (question) => SizedBox(
                        width: 600,
                        child: QuestionCard(
                          question: question,
                          isEditing: !state.isPreviewing,
                          width: 600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ),
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
