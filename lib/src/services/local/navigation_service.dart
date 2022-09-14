import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:tech_it/src/configs/app_setup.locator.dart';
import 'package:tech_it/src/configs/app_setup.router.dart';

class NavService {
  static NavigationService? _navigationService = locator<NavigationService>();

  // key
  static GlobalKey<NavigatorState>? get key => StackedService.navigatorKey;

  // key for nested navigator to be used in SplashView
  static final _splashViewNavigatorId = 0;

  static GlobalKey<NavigatorState>? get nestedNavKey =>
      StackedService.nestedNavigationKey(_splashViewNavigatorId);

  // on generate route
  static Route<dynamic>? Function(RouteSettings) get onGenerateRoute =>
      StackedRouter().onGenerateRoute;

  // nested routes with args for root navigator
  static Future<dynamic>? splash({dynamic arguments}) => _navigationService!
      .clearStackAndShow(Routes.splashView, arguments: arguments);

  static Future<dynamic>? signIn({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.signInView, arguments: arguments);

  static Future<dynamic>? signup({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.signupView, arguments: arguments);

  static Future<dynamic>? typeSelection({dynamic arguments}) =>
      _navigationService!
          .clearStackAndShow(Routes.typeSelectionView, arguments: arguments);

  static Future<dynamic>? busTracking({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.busTrackingView, arguments: arguments);

  static Future<dynamic>? childTracking({dynamic arguments}) =>
      _navigationService!
          .navigateTo(Routes.childTrackingView, arguments: arguments);

  static Future<dynamic>? invoice({dynamic arguments}) =>
      _navigationService!.navigateTo(Routes.invoiceView, arguments: arguments);
}
