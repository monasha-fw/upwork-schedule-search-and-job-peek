import 'package:auto_route/auto_route.dart';
import 'package:schedule_search_and_job_peek/i18n/translations.g.dart';
import 'package:schedule_search_and_job_peek/presentation/routing/router.gr.dart';

part 'router_paths.dart';

const int _duration = 500;

@AutoRouterConfig(replaceInRouteName: 'Page|Dialog,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    CustomRoute(
      initial: true,
      page: SplashRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: _duration,
      keepHistory: false,
      path: '/',
    ),
    CustomRoute(
      page: HomeRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: _duration,
      path: homeRoute,
      title: (context, data) => t.common.app.title,
      children: [
        CustomRoute(
          page: ScheduleRoute.page,
          transitionsBuilder: TransitionsBuilders.slideRightWithFade,
          durationInMilliseconds: _duration,
          path: patientsRoute,
          title: (context, data) => t.common.routes.schedule,
        ),
      ],
    ),
    CustomRoute(
      page: JobHomeRoute.page,
      transitionsBuilder: TransitionsBuilders.fadeIn,
      durationInMilliseconds: _duration,
    ),
  ];
}

final appRouter = AppRouter();
