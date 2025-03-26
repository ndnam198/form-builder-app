import 'package:flutter/material.dart';
import 'package:form_builder_assignment/form_builder/domain/form_question.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/question_card.dart';
import 'package:form_builder_assignment/form_builder/view/widgets/title_card.dart';
import 'package:form_builder_assignment/utils/uuid_generator.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({super.key});

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug'),
      ),
      body: Center(
        child: Column(
          children: [
            _buildTitleCard(),
            _buildQuestionParagraph(),
          ],
        ),
      ),
    );
  }

  QuestionCard _buildQuestionParagraph() {
    return QuestionCard(
      question: FormQuestion.paragraph(
        id: generateUuid(),
        question: 'What project are you working on?',
        answer: "I'm working on a form builder assignment",
        isRequired: true,
      ),
      width: 600,
      isEditing: true,
    );
  }

  TitleCard _buildTitleCard() {
    return const TitleCard(
      title: 'Debug',
      description: '',
      width: 600,
    );
  }
}
