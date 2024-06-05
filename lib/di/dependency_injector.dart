import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pine/pine.dart';
import 'package:poi_app/model/test.dart';
import 'package:poi_app/repository/mapper/test_mapper.dart';
import 'package:poi_app/services/responses/test_dto.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../repository/repository.dart';
import '../services/new_service.dart';

part 'mappers.dart';
part 'providers.dart';
part 'repositories.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => DependencyInjectorHelper(
        blocs: null,
        providers: _providers,
        repositories: _repositories,
        mappers: _mappers,
        child: child,
      );
}