// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:indemand_ticket_booking/presentation/pages/auth/pages/login_page.dart'
    as _i6;
import 'package:indemand_ticket_booking/presentation/pages/auth/pages/signup_page.dart'
    as _i7;
import 'package:indemand_ticket_booking/presentation/pages/booked_ticket_details/booked_ticket_details.dart'
    as _i1;
import 'package:indemand_ticket_booking/presentation/pages/cart/cart.dart'
    as _i2;
import 'package:indemand_ticket_booking/presentation/pages/dashboard/dashboard_page.dart'
    as _i4;
import 'package:indemand_ticket_booking/presentation/pages/event_details/event_details.dart'
    as _i5;
import 'package:indemand_ticket_booking/presentation/pages/splash/splash_page.dart'
    as _i8;
import 'package:indemand_ticket_booking/presentation/pages/webpage/webpage.dart'
    as _i3;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    BookedTicketDeatils.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BookedTicketDeatils(),
      );
    },
    CartRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartPage(),
      );
    },
    CustomWebRoute.name: (routeData) {
      final args = routeData.argsAs<CustomWebRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CustomWebPage(
          key: args.key,
          endPoint: args.endPoint,
        ),
      );
    },
    DashBoard.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DashBoard(),
      );
    },
    EventDetails.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.EventDetails(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BookedTicketDeatils]
class BookedTicketDeatils extends _i9.PageRouteInfo<void> {
  const BookedTicketDeatils({List<_i9.PageRouteInfo>? children})
      : super(
          BookedTicketDeatils.name,
          initialChildren: children,
        );

  static const String name = 'BookedTicketDeatils';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i9.PageRouteInfo<void> {
  const CartRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CustomWebPage]
class CustomWebRoute extends _i9.PageRouteInfo<CustomWebRouteArgs> {
  CustomWebRoute({
    _i10.Key? key,
    required String endPoint,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          CustomWebRoute.name,
          args: CustomWebRouteArgs(
            key: key,
            endPoint: endPoint,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomWebRoute';

  static const _i9.PageInfo<CustomWebRouteArgs> page =
      _i9.PageInfo<CustomWebRouteArgs>(name);
}

class CustomWebRouteArgs {
  const CustomWebRouteArgs({
    this.key,
    required this.endPoint,
  });

  final _i10.Key? key;

  final String endPoint;

  @override
  String toString() {
    return 'CustomWebRouteArgs{key: $key, endPoint: $endPoint}';
  }
}

/// generated route for
/// [_i4.DashBoard]
class DashBoard extends _i9.PageRouteInfo<void> {
  const DashBoard({List<_i9.PageRouteInfo>? children})
      : super(
          DashBoard.name,
          initialChildren: children,
        );

  static const String name = 'DashBoard';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.EventDetails]
class EventDetails extends _i9.PageRouteInfo<void> {
  const EventDetails({List<_i9.PageRouteInfo>? children})
      : super(
          EventDetails.name,
          initialChildren: children,
        );

  static const String name = 'EventDetails';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i9.PageRouteInfo<void> {
  const SignUpRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
