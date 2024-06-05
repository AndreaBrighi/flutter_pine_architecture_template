part of 'test_bloc.dart';

abstract class TestEvent extends Equatable {
  const TestEvent();
}

class Click extends TestEvent {
  @override
  List<Object> get props => [];
}