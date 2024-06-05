import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './route_handlers.dart';

class Routes {

  static String login = "/login";
  static const String _home = "/home/:username";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      if (kDebugMode) {
        print("ROUTE WAS NOT FOUND !!!");
      }
      return;
    });
    router.define(login, handler: loginHandler, transitionType: TransitionType.none);
    router.define(_home, handler: homeHandler, transitionType: TransitionType.none);
  }

  static String home(String username) {
    return "/home/$username";
  }
}