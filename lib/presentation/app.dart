import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';
import 'package:schedule_search_and_job_peek/presentation/routing/router.dart';
import 'package:schedule_search_and_job_peek/presentation/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      builder: (context, child) {
        /// Material app with router
        return MaterialApp.router(
          onGenerateTitle: (context) => t.common.app.title,
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: lightTheme,
          builder: BotToastInit(),
          routerConfig: appRouter.config(
            navigatorObservers: () => [BotToastNavigatorObserver()],
          ),
        );
      },
    );
  }
}
