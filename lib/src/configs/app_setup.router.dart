// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../views/bus_tracking/bus_tracking_view.dart';
import '../views/child_tracking/child_tracking_view.dart';
import '../views/invoice/invoice_view.dart';
import '../views/sign_in/sign_in_view.dart';
import '../views/sign_up/sign_up_view.dart';
import '../views/splash/splash_view.dart';
import '../views/type_selection/type_selection_view.dart';

class Routes {
  static const String splashView = '/';
  static const String signInView = '/sign-in-view';
  static const String signupView = '/signup-view';
  static const String typeSelectionView = '/type-selection-view';
  static const String childTrackingView = '/child-tracking-view';
  static const String busTrackingView = '/bus-tracking-view';
  static const String invoiceView = '/invoice-view';
  static const all = <String>{
    splashView,
    signInView,
    signupView,
    typeSelectionView,
    childTrackingView,
    busTrackingView,
    invoiceView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashView, page: SplashView),
    RouteDef(Routes.signInView, page: SignInView),
    RouteDef(Routes.signupView, page: SignupView),
    RouteDef(Routes.typeSelectionView, page: TypeSelectionView),
    RouteDef(Routes.childTrackingView, page: ChildTrackingView),
    RouteDef(Routes.busTrackingView, page: BusTrackingView),
    RouteDef(Routes.invoiceView, page: InvoiceView),
  ];

  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    SplashView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashView(),
        settings: data,
      );
    },
    SignInView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInView(),
        settings: data,
      );
    },
    SignupView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignupView(),
        settings: data,
      );
    },
    TypeSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TypeSelectionView(),
        settings: data,
      );
    },
    ChildTrackingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ChildTrackingView(),
        settings: data,
      );
    },
    BusTrackingView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BusTrackingView(),
        settings: data,
      );
    },
    InvoiceView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InvoiceView(),
        settings: data,
      );
    },
  };
}
