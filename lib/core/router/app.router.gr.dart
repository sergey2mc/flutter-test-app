// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../pages/auth/auth.connector.dart' as _i1;
import '../../pages/home/home.connector.dart' as _i2;
import '../../pages/page-1/page-1.page.dart' as _i3;
import '../../pages/page-2/page-2.page.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuthPageConnectorRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthPageConnector());
    },
    HomePageConnectorRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePageConnector());
    },
    Page1Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Page1());
    },
    Page2Route.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.Page2());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(AuthPageConnectorRoute.name, path: '/auth'),
        _i5.RouteConfig(HomePageConnectorRoute.name, path: '/'),
        _i5.RouteConfig(Page1Route.name, path: '/page-1'),
        _i5.RouteConfig(Page2Route.name, path: '/page-2'),
        _i5.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.AuthPageConnector]
class AuthPageConnectorRoute extends _i5.PageRouteInfo<void> {
  const AuthPageConnectorRoute()
      : super(AuthPageConnectorRoute.name, path: '/auth');

  static const String name = 'AuthPageConnectorRoute';
}

/// generated route for
/// [_i2.HomePageConnector]
class HomePageConnectorRoute extends _i5.PageRouteInfo<void> {
  const HomePageConnectorRoute()
      : super(HomePageConnectorRoute.name, path: '/');

  static const String name = 'HomePageConnectorRoute';
}

/// generated route for
/// [_i3.Page1]
class Page1Route extends _i5.PageRouteInfo<void> {
  const Page1Route() : super(Page1Route.name, path: '/page-1');

  static const String name = 'Page1Route';
}

/// generated route for
/// [_i4.Page2]
class Page2Route extends _i5.PageRouteInfo<void> {
  const Page2Route() : super(Page2Route.name, path: '/page-2');

  static const String name = 'Page2Route';
}
