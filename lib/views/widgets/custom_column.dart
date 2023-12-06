import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
const CustomColumn({super.key, required this.txt });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Team $txt',
          style: const TextStyle(fontSize: 40),
        ),
        Text('${txt == 'A' ? 0 : 0}',
            style: const TextStyle(fontSize: 150)),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            
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