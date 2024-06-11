part of 'dependency_injector.dart';

final List<RepositoryProvider> _repositories = [
  RepositoryProvider<NewRepository>(
    create: (context){ 
      final repository = NewRepositoryImpl(
      newService: context.read(),
      mapper: context.read(),
      );
      context.read<Dio>()
      .interceptors
      .insert(0, 
      AuthInterceptor(repository: repository, context: context));
      return repository;
    },
  ),
];