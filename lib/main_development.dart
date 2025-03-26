import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_assignment/app/app.dart';
import 'package:form_builder_assignment/bootstrap.dart';
import 'package:form_builder_assignment/utils/logger.dart';
import 'package:talker_bloc_logger/talker_bloc_logger_observer.dart';

void main() {
  Bloc.observer = TalkerBlocObserver(talker: talker);

  bootstrap(() => const App());
}
