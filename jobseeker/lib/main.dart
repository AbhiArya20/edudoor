import 'package:jobseeker/src/app.dart';
import 'package:jobseeker/src/bloc_observers/app_bloc_observer.dart';
import 'package:jobseeker/src/firebase/firebase_init.dart';
import 'package:jobseeker/src/views/on_boarding_page/OnBoardingPage.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // Ensure that the FlutterEngine is initialized.
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  FlutterNativeSplash.remove();

  // Initialize Firebase
  await FirebaseInit.init();
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  // Set the status bar color to transparent
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  ));

  // Bloc observer
  Bloc.observer = AppBlocObserver();

  runApp(
    DevicePreview(
      storage: DevicePreviewStorage.none(),
      enabled: !kReleaseMode,
      isToolbarVisible: true,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
