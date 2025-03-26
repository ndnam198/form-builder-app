import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/bloc/simple_form_builder_bloc.dart';
import 'package:form_builder_assignment/form_builder/view/form_builder_page.dart';
import 'package:form_builder_assignment/form_builder/view/response_page.dart';

class FormBuilderProvider extends StatelessWidget {
  const FormBuilderProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimpleFormBuilderBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Form Builder App'),
        ),
        body: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              bottom: const PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: TabBar(
                  tabs: [
                    Tab(text: 'Form Builder'),
                    Tab(text: 'Responses'),
                  ],
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                FormBuilderPage(),
                ResponsePage(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
