part of 'test_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();
}

class FetchingTestState extends TestState {
  @override
  List<Object> get props => [];
}

class FetchedTestState extends TestState {
  final Test test;

  const FetchedTestState(this.test);

  @override
  List<Object> get props => [test];
}