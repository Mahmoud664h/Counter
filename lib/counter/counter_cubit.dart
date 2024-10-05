import 'package:counter/counter/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
  int count = 0;

  incrementCounter() {
    count++;
    emit(CounterIncrementState());
  }

  decrementCounter() {
    count--;
    emit(CounterDecrementState());
  }

  restCounter() {
    count = 0;
    emit(CounterRestState());
  }
}
