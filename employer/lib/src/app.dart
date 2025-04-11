import 'package:employer/src/Routes/app_pages.dart';
import 'package:employer/src/Routes/route_observer_service.dart';
import 'package:employer/src/blocs_cubits/all_bloc.dart';
import 'package:employer/src/blocs_cubits/application_bloc/application_bloc.dart';
import 'package:employer/src/blocs_cubits/authentication_bloc/authentication_bloc.dart';
import 'package:employer/src/firebase/firebase_analytics.dart';
import 'package:employer/src/localization/local_language.dart';
import 'package:employer/src/themes/theme_utils.dart';
import 'package:employer/src/themes/themes.dart';
import 'package:employer/src/views/authentication/login_screen/login_screen.dart';
import 'package:employer/src/views/on_boarding_page/OnBoardingPage.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    AllBloc.applicationBloc.add(ApplicationSetupEvent());
  }

  @override
  void dispose() {
    AllBloc.dispose();
    super.dispose();
  }

  static FirebaseAnalyticsObserver firebaseObserver = FirebaseAnalyticsObserver(analytics: TrackingService.getAnalytics());
  final CustomRouteObserver customRouteObserver = CustomRouteObserver();

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");
    MaterialTheme theme = MaterialTheme(textTheme);
    return MultiBlocProvider(
      providers: AllBloc.providers,
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, auth) {
          return ResponsiveSizer(
            builder: (context, orientation, screenType) {
              return GetMaterialApp(
                useInheritedMediaQuery: true,
                // builder: DevicePreview.appBuilder,
                locale: Get.deviceLocale,
                translations: LocalLanguage(),
                debugShowCheckedModeBanner: false,
                fallbackLocale: const Locale('en', 'US'),
                title: 'title'.tr,
                theme: theme.lightHighContrast(),
                darkTheme: theme.lightHighContrast(),
                navigatorObservers: [firebaseObserver, customRouteObserver],
                // getPages: AppPages.routes,
                // initialRoute: AppPages.initial,

                // home: BlocBuilder<InternetCubit, InternetState>(
                //   builder: (context, internetState) {
                //     return BlocBuilder<ApplicationBloc, ApplicationState>(
                //       builder: (context, application) {
                //         if (application is ApplicationCompleteState) {
                //           if (auth is AuthenticationSuccessState) {
                //             return const BottomNavigator();
                //           }
                //           if (auth is AuthenticationFailedState) {
                //             return const LoginScreen();
                //           }
                //         }
                //         return const LoginScreen();
                //       },
                //     );
                //   },
                // ),

                home: const OnBoardingPage(),
              );
            },
          );
        },
      ),
    );
  }
}
