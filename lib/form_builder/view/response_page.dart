import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_assignment/form_builder/domain/form_data.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';

class ResponsePage extends StatelessWidget {
  const ResponsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<SimpleFormBuilderBloc, SimpleFormBuilderState, List<FormData>>(
      selector: (state) => state.responses,
      builder: (context, responses) {
        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: responses.length,
          itemBuilder: (context, index) {
            final response = responses[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: ExpansionTile(
                title: Text(response.formTitle.name),
                subtitle: Text('Submitted at: ${response.submittedAt!.toLocal()}'),
              ),
            );
          },
        );
      },
    );
  }
}
