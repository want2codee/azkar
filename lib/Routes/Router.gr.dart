// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:azkar/screens/Loadig.dart';
import 'package:azkar/screens/zekr.dart';
import 'package:azkar/screens/category.dart';
import 'package:page_transition/page_transition.dart';

class Router {
  static const loading = '/';
  static const zekr = '/zekr';
  static const category = '/category';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.loading:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return MaterialPageRoute<dynamic>(
          builder: (_) => Loading(key: typedArgs),
          settings: settings,
        );
      case Router.zekr:
        if (hasInvalidArgs<ZekrArguments>(args, isRequired: true)) {
          return misTypedArgsRoute<ZekrArguments>(args);
        }
        final typedArgs = args as ZekrArguments;
        return PageTransition(
            child: Zekr(key: typedArgs.key, title: typedArgs.title),
            type: PageTransitionType.size,
            curve: Curves.elasticInOut,
            alignment: Alignment.center,
            settings: settings);
      case Router.category:
        if (hasInvalidArgs<Key>(args)) {
          return misTypedArgsRoute<Key>(args);
        }
        final typedArgs = args as Key;
        return PageTransition(
          child: Category(),
          type: PageTransitionType.fade,
          key: typedArgs,
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//Zekr arguments holder class
class ZekrArguments {
  final Key key;
  final String title;
  ZekrArguments({this.key, @required this.title});
}
