import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poi_app/model/test.dart';

import '../../repository/repository.dart';

part 'test_event.dart';
part 'test_state.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final NewRepository newRepository;

  TestBloc({required this.newRepository}) : super(FetchingTestState()) {
    on<FetchTestEvent>(_mapFetchNewsEventToState);
  }

  void fetchNews() => add(FetchTestEvent());

  void _mapFetchNewsEventToState(_, Emitter<TestState> emit) async {
    emit(FetchingTestState());

    Test? test;
    test = await newRepository.test;
    emit(FetchedTestState(test));
  }
}
