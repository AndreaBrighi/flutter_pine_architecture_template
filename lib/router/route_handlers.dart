import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../pages/login.dart';
import '../pages/home.dart';

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) =>
  const LoginPage()
);

var homeHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) => 
  HomePage(username: params['username']![0])
);