import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({required String team, required int buttomNum}) {
    if (team == 'A') {
      teamAPoints += buttomNum;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += buttomNum;
      emit(CounterBIncrementState());
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
    emit(CounterBIncrementState());
  }
}
