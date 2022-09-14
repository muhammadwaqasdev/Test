import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:tech_it/src/app/app_view.dart';
import 'package:tech_it/src/configs/app_setup.locator.dart';
import 'package:tech_it/src/services/local/flavor_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // getting package
  final package = await PackageInfo.fromPlatform();

  setupLocator();

  // app flavor init
  FlavorService.init(package);

  runApp(AppView());
}
