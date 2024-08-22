// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:itunes/model/model/itune.model.dart' as _i6;
import 'package:itunes/view/screens/home.dart' as _i1;
import 'package:itunes/view/screens/media.dart' as _i2;
import 'package:itunes/view/screens/result.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    MediaRoute.name: (routeData) {
      final args = routeData.argsAs<MediaRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.MediaPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    ResultRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ResultPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MediaPage]
class MediaRoute extends _i4.PageRouteInfo<MediaRouteArgs> {
  MediaRoute({
    _i5.Key? key,
    required _i6.Tune data,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          MediaRoute.name,
          args: MediaRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaRoute';

  static const _i4.PageInfo<MediaRouteArgs> page =
      _i4.PageInfo<MediaRouteArgs>(name);
}

class MediaRouteArgs {
  const MediaRouteArgs({
    this.key,
    required this.data,
  });

  final _i5.Key? key;

  final _i6.Tune data;

  @override
  String toString() {
    return 'MediaRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [_i3.ResultPage]
class ResultRoute extends _i4.PageRouteInfo<void> {
  const ResultRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResultRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
