import 'package:auto_route/auto_route.dart';
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
  ];
}

final appRouter = AppRouter();
