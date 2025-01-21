// import 'dart:ui_web';

import 'package:app1/screens/categorie_screen.dart';
import 'package:app1/screens/landing_screen.dart';
import 'package:app1/screens/login_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    "home": (_) => LandingScreen(),
    "login": (_) => LoginScreen(),
    "categories": (_) => CategorieScreen(),
  };
}
