import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomColumn extends StatelessWidget {
const CustomColumn({super.key, required this.txt, this.teamAPoints, this.teamBPoints ,  });

  final String txt;
  final int? teamAPoints;
  final int? teamBPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Team $txt',
          style: const TextStyle(fontSize: 40),
        ),
        Text('${txt == 'A' ? teamAPoints : teamBPoints}',
            style: const TextStyle(fontSize: 100)),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: txt, buttomNum: 1);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
            minimumSize: MaterialStatePropertyAll(Size(150, 40)),
          ),
          child: const Text(
            'Add 1 Point',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: txt, buttomNum: 2);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
            minimumSize: MaterialStatePropertyAll(Size(150, 40)),
          ),
          child: const Text(
            'Add 2 Point',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).teamIncrement(team: txt, buttomNum: 3);
          },
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.orange),
            minimumSize: MaterialStatePropertyAll(Size(150, 40)),
          ),
          child: const Text(
            'Add 3 Point',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),

      ],
    );
  }
}