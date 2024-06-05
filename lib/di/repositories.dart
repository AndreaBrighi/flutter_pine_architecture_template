part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<NewRepository>(
    create: (context) => NewRepositoryImpl(
      newService: context.read(),
      mapper: context.read(),
    ),
  ),
];