import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:schedule_search_and_job_peek/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureDependencies() async => await getIt.init();
