import 'package:flutter/material.dart';

import 'views/home_page.dart';

void main() {
  runApp(const BasketballPoints());
}

class BasketballPoints extends StatelessWidget {
  
  const BasketballPoints({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage()
    );
  }
    
}

