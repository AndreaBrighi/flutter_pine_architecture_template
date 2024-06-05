part of 'dependency_injector.dart';

final List<SingleChildWidget> _providers = [
  Provider<Dio>(
    create: (_) => Dio(),
  ),
  Provider<NewService>(
    create: (context) => NewService(
      context.read(),
      baseUrl: 'https://www.google.com/',
    ),
  ),
];