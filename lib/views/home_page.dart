import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/custom_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        if(state is CounterAIncrementState) {
          BlocProvider.of<CounterCubit>(context).teamAPoints;
        }else {
        BlocProvider.of<CounterCubit>(context).teamBPoints;

        }

      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(children: [
            // Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomColumn(txt: 'A' , teamAPoints: BlocProvider.of<CounterCubit>(context).teamAPoints),
                  Container(color: Colors.grey, height: 400, width: 1),
                  CustomColumn(txt: 'B', teamBPoints: BlocProvider.of<CounterCubit>(context).teamBPoints),
                ],
              ),
            ),
            const Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CounterCubit>(context).reset();
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
                minimumSize: MaterialStatePropertyAll(Size(150, 40)),
              ),
              child: const Text(
                'Reset',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(flex: 1)
          ]),
        );
      },
    );
  }
}
