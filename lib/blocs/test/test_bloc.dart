import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/repository.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final NewRepository newRepository;

  TestBloc({required this.newRepository}) : super(WaitForClick()) {
    on<Click>(_mapFetchNewsEventToState);
  }

  void clicked() => add(Click());

  void _mapFetchNewsEventToState(_, Emitter<TestState> emit) async {
    if(state is WaitForClick){
      emit(const Clicked(1));
    }else if (state is Clicked){
      emit(Clicked((state as Clicked).clicks + 1));
    }
  }
}
