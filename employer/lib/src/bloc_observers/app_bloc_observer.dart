import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:employer/src/logs/logger.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    Log.trace(tag: 'BLOC CREATE', message: bloc);
    super.onCreate(bloc);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    Log.trace(tag: 'BLOC EVENT', message: event);
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    Log.trace(tag: 'BLOC CHANGE', message: change);
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    Log.trace(tag: 'BLOC TRANSITION', message: transition.event);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    Log.error(tag: 'BLOC ERROR', message: error);
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    Log.trace(tag: 'BLOC CLOSE', message: bloc);
    super.onClose(bloc);
  }
}
