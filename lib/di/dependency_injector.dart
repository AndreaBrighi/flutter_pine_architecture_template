import 'package:app/services/interceptor/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pine/pine.dart';
import '../model/test.dart';
import '../repository/mapper/test_mapper.dart';
import '../services/responses/test_dto.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../blocs/test/test_bloc.dart';
import '../repository/repository.dart';
import '../services/new_service.dart';

part 'mappers.dart';
part 'providers.dart';
part 'repositories.dart';
part 'blocs.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => DependencyInjectorHelper(
        blocs: _blocs,
        providers: _providers,
        repositories: _repositories,
        mappers: _mappers,
        child: child,
      );
}