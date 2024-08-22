import 'package:auto_route/auto_route.dart';
import 'package:itunes/core/routes/route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => _list;

  final _list = [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: ResultRoute.page),
    AutoRoute(page: MediaRoute.page),
  ];
}
