import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:schedule_search_and_job_peek/presentation/common/widgets/index.dart';

class MainBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    /// Global error notification
    showErrorNotification(error.toString());

    super.onError(bloc, error, stackTrace);
  }
}
