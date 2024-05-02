import 'package:flutter/material.dart';

import '../../presentation/screens/index.dart';
import 'index.dart';

Map<String, WidgetBuilder> get routes => {
      Routes.splashScreen: (context) => const SplashScreen(),
      Routes.homeScreen: (context) => const HomeScreen(),
    };
