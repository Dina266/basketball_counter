import 'package:flutter/material.dart';

void main() {
  runApp(const BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  const BasketballPoints({super.key});

  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {
  int counterA = 0;
  int counterB = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                column('A'),
                Container(
                  color: Colors.grey,
                  height: 400,
                  width: 1
                ), 
                column('B'),
              ],
            ),
          ),
          const Spacer(flex: 2),
          ElevatedButton(
            onPressed: () {
              setState(() {
                counterA = 0;
                counterB = 0;
              });
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
      ),
    );
  }

  Column column(txt) {
    return Column(
      children: [
        Text(
          'Team $txt',
          style: const TextStyle(fontSize: 40),
        ),
        Text('${txt == 'A' ? counterA : counterB}',
            style: const TextStyle(fontSize: 150)),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              txt == 'A' ? counterA++ : counterB++;
            });
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
            setState(() {
              txt == 'A' ? counterA = counterA + 2 : counterB = counterB + 2;
            });
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
            setState(() {
              txt == 'A' ? counterA = counterA + 3 : counterB = counterB + 3;
            });
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
