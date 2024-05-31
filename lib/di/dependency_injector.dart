import 'package:flutter/material.dart';
import 'package:pine/pine.dart';
import 'package:poi_app/model/test.dart';
import 'package:poi_app/repository/mapper/test_mapper.dart';
import 'package:poi_app/services/responses/test_dto.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

part 'mappers.dart';

class DependencyInjector extends StatelessWidget {
  final Widget child;

  const DependencyInjector({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => DependencyInjectorHelper(
        blocs: null,
        providers: null,
        repositories: null,
        mappers: _mappers,
        child: child,
      );
}