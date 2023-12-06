import 'package:flutter/material.dart';

import 'widgets/custom_column.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                const CustomColumn( txt :'A'),
                Container(
                  color: Colors.grey,
                  height: 400,
                  width: 1
                ), 
                const CustomColumn(txt : 'B'),
              ],
            ),
          ),
          const Spacer(flex: 2),
          ElevatedButton(
            onPressed: () {
              
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
  }
}
