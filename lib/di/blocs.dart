part of 'dependency_injector.dart';


final List<BlocProvider> _blocs = [
  BlocProvider<TestBloc>(
    create: (context) => TestBloc(
      newRepository: context.read(),
    ),
  ),
];