import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/enums/index.dart';
import 'package:schedule_search_and_job_peek/injection.dart';
import 'package:schedule_search_and_job_peek/presentation/app.dart';
import 'package:schedule_search_and_job_peek/presentation/common/blocs/observer/bloc_observer.dart';

Future<void> commonMain(Flavour flavour) async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MainBlocObserver();

  /// injectable initialization
  await configureDependencies();

  runApp(const App());
}
