import 'dart:io';
 
import '../../../repository/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
 
class AuthInterceptor extends QueuedInterceptor {
  final NewRepository repository;
  BuildContext context;
  AuthInterceptor({required this.repository, required this.context});
 
  @override
  void onRequest(
    RequestOptions options, RequestInterceptorHandler handler) async {
    /*final user = await repository.currentUser;
    final token = await repository.currentToken;*/
    options.headers["AppVer"] = "3.5.5";
    options.headers[HttpHeaders.contentTypeHeader] = 'application/json';
    options.headers["Lang"] = Platform.localeName.split('_')[0];
 
    /*if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }*/
    super.onRequest(options, handler);
  }
}
 