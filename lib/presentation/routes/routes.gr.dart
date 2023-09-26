// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:indemand_ticket_booking/presentation/pages/auth/pages/login_page.dart'
    as _i8;
import 'package:indemand_ticket_booking/presentation/pages/auth/pages/signup_page.dart'
    as _i10;
import 'package:indemand_ticket_booking/presentation/pages/booked_ticket_details/booked_ticket_details.dart'
    as _i1;
import 'package:indemand_ticket_booking/presentation/pages/cart/cart.dart'
    as _i2;
import 'package:indemand_ticket_booking/presentation/pages/checkout/checkout_page.dart'
    as _i3;
import 'package:indemand_ticket_booking/presentation/pages/dashboard/dashboard_page.dart'
    as _i5;
import 'package:indemand_ticket_booking/presentation/pages/event_details/event_details.dart'
    as _i7;
import 'package:indemand_ticket_booking/presentation/pages/most_popular_details/most_popular_details_page.dart'
    as _i6;
import 'package:indemand_ticket_booking/presentation/pages/profile/profile_page.dart'
    as _i9;
import 'package:indemand_ticket_booking/presentation/pages/splash/splash_page.dart'
    as _i11;
import 'package:indemand_ticket_booking/presentation/pages/webpage/webpage.dart'
    as _i4;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    BookedTicketDeatils.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BookedTicketDeatils(),
      );
    },
    CartRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CartPage(),
      );
    },
    CheckoutRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CheckoutPage(),
      );
    },
    CustomWebRoute.name: (routeData) {
      final args = routeData.argsAs<CustomWebRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.CustomWebPage(
          key: args.key,
          endPoint: args.endPoint,
        ),
      );
    },
    DashBoard.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DashBoard(),
      );
    },
    DetailedMostPopularRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedMostPopularRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DetailedMostPopularPage(
          key: args.key,
          title: args.title,
        ),
      );
    },
    EventDetails.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EventDetails(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ProfilePage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.SignUpPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BookedTicketDeatils]
class BookedTicketDeatils extends _i12.PageRouteInfo<void> {
  const BookedTicketDeatils({List<_i12.PageRouteInfo>? children})
      : super(
          BookedTicketDeatils.name,
          initialChildren: children,
        );

  static const String name = 'BookedTicketDeatils';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CartPage]
class CartRoute extends _i12.PageRouteInfo<void> {
  const CartRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CheckoutPage]
class CheckoutRoute extends _i12.PageRouteInfo<void> {
  const CheckoutRoute({List<_i12.PageRouteInfo>? children})
      : super(
          CheckoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CustomWebPage]
class CustomWebRoute extends _i12.PageRouteInfo<CustomWebRouteArgs> {
  CustomWebRoute({
    _i13.Key? key,
    required String endPoint,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CustomWebRoute.name,
          args: CustomWebRouteArgs(
            key: key,
            endPoint: endPoint,
          ),
          initialChildren: children,
        );

  static const String name = 'CustomWebRoute';

  static const _i12.PageInfo<CustomWebRouteArgs> page =
      _i12.PageInfo<CustomWebRouteArgs>(name);
}

class CustomWebRouteArgs {
  const CustomWebRouteArgs({
    this.key,
    required this.endPoint,
  });

  final _i13.Key? key;

  final String endPoint;

  @override
  String toString() {
    return 'CustomWebRouteArgs{key: $key, endPoint: $endPoint}';
  }
}

/// generated route for
/// [_i5.DashBoard]
class DashBoard extends _i12.PageRouteInfo<void> {
  const DashBoard({List<_i12.PageRouteInfo>? children})
      : super(
          DashBoard.name,
          initialChildren: children,
        );

  static const String name = 'DashBoard';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.DetailedMostPopularPage]
class DetailedMostPopularRoute
    extends _i12.PageRouteInfo<DetailedMostPopularRouteArgs> {
  DetailedMostPopularRoute({
    _i13.Key? key,
    required String title,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          DetailedMostPopularRoute.name,
          args: DetailedMostPopularRouteArgs(
            key: key,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedMostPopularRoute';

  static const _i12.PageInfo<DetailedMostPopularRouteArgs> page =
      _i12.PageInfo<DetailedMostPopularRouteArgs>(name);
}

class DetailedMostPopularRouteArgs {
  const DetailedMostPopularRouteArgs({
    this.key,
    required this.title,
  });

  final _i13.Key? key;

  final String title;

  @override
  String toString() {
    return 'DetailedMostPopularRouteArgs{key: $key, title: $title}';
  }
}

/// generated route for
/// [_i7.EventDetails]
class EventDetails extends _i12.PageRouteInfo<void> {
  const EventDetails({List<_i12.PageRouteInfo>? children})
      : super(
          EventDetails.name,
          initialChildren: children,
        );

  static const String name = 'EventDetails';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.SignUpPage]
class SignUpRoute extends _i12.PageRouteInfo<void> {
  const SignUpRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
