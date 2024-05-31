part of 'dependency_injector.dart';

final List<SingleChildWidget> _mappers = [
  Provider<DTOMapper<TestDTO, Test>>(
    create: (_) => TestMapper(),
  ),
];