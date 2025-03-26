import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_assignment/form_builder/domain/form_data.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/question_card.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/title_card.dart';
import 'package:form_builder_assignment/utils/platform_detector.dart';

class ResponseWidget extends StatelessWidget {
  const ResponseWidget({required this.response, super.key});

  final FormData response;

  @override
  Widget build(BuildContext context) {
    final formWidth = isMobile ? (MediaQuery.of(context).size.width - 16 * 2) : 600.0;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: FormBuilder(
          child: Column(
            children: [
              TitleCard(
                isEditing: false,
                title: response.formTitle.name,
                description: response.formTitle.description,
                width: formWidth,
              ),
              const SizedBox(height: 24),
              ...response.questions.map(
                (question) => SizedBox(
                  width: formWidth,
                  child: QuestionCard(
                    isViewingOnly: true,
                    key: ValueKey(question.id),
                    question: question,
                    isEditing: false,
                    width: formWidth,
                  ),
                ),
              ),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
