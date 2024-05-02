import 'dart:async';

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../di/index.dart';

Future<bool> hasInternetAccess() async {
  final hasInternetAccess = await di<InternetConnection>().hasInternetAccess;
  return hasInternetAccess;
}
