import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/form_builder_page.dart';

class FormBuilderProvider extends StatelessWidget {
  const FormBuilderProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimpleFormBuilderBloc(),
      child: const FormBuilderPage(),
    );
  }
}
