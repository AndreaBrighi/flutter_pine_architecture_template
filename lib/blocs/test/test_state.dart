part of 'test_bloc.dart';

abstract class TestState extends Equatable {
  const TestState();
}

class WaitForClick extends TestState {
  @override
  List<Object> get props => [];
}

class Clicked extends TestState {
  final int clicks;

  const Clicked(this.clicks);

  @override
  List<Object> get props => [clicks];
}